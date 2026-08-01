using HarmonyLib;
using System;
using System.Reflection;
using System.Reflection.Emit;
using System.Runtime.CompilerServices;

namespace PityUnlock
{

    //Version indicator.  This class is copied to projects directly to avoid maintaining different versions across mods.
    //  Required since since we do not have control of the game's environment.  
    //  
    //Version 1.0

    /// <summary>
    /// Handles creating the complementary load or store operand for a code instruction.
    /// Create this class, and then call the
    /// </summary>
    public class LocalVariableInstruction
    {
        /// <summary>
        /// The load version of the source instruction
        /// </summary>
        public CodeInstruction Load { get; private set; }

        /// <summary>
        /// The store version of the source instruction
        /// </summary>
        public CodeInstruction Store { get; private set; }


        private Type _type;

        /// <summary>
        /// The variable's Type.  
        /// </summary>
        public Type Type
        {
            set
            {
                _type = value;
            }
            get
            {
                CheckInit();
                return _type;
            }
        }

        /// <summary>
        /// The variable's local index.
        /// </summary>
        public int Index
        {
            get
            {
                CheckInit();
                LocalBuilder localBuilder = Load.operand as LocalBuilder;
                if (localBuilder == null) throw new ApplicationException("operand is not a local builder");
                return localBuilder.LocalIndex;
            }
        }

        /// <summary>
        /// Throws an exception of this object has not been inited yet.
        /// </summary>
        /// <exception cref="ApplicationException"></exception>
        private void CheckInit()
        {
            if (!Inited) throw new ApplicationException("MatchAndInit() must be called before LocalVariableInstruction can be used.");
        }

        /// <summary>
        /// True if the Match has been called and the object inited.
        /// </summary>
        private bool Inited{ get; set; }

        /// <summary>
        /// Creates the Load and Store code complementary instructions based on the 
        /// instruction provided.
        /// </summary>
        /// <param name="instruction">The load or store construction to build the Load and Store properties</param>
        /// <exception cref="ArgumentNullException"></exception>
        /// <exception cref="ArgumentException"></exception>
        private void Init(CodeInstruction instruction)
        {
            if (instruction == null) throw new ArgumentNullException(nameof(instruction));

            switch (instruction)
            {
                case CodeInstruction x when x.IsStloc():
                    Load = GetLoadLocal(instruction);
                    Store = instruction;
                    break;
                case CodeInstruction x when x.IsLdloc():
                    Load = instruction;
                    Store = GetStoreLocal(instruction);
                    break;
                default:
                    throw new ArgumentException($"Instruction OpCode is not a local load or store type.", nameof(instruction));
            }

            //Set type.  Local builder has already been verified.
            this.Type = (instruction.operand as LocalBuilder)?.LocalType;

            Inited = true;
        }

        /// <summary>
        /// Checks if the instruction is a load and matches this object's type and index.  
        /// </summary>
        /// <param name="instruction"></param>
        /// <returns></returns>
        public CodeMatch MatchLoad()
        {
            return MatchLoadStore(false);
        }

        /// <summary>
        /// Checks if the instruction is a store and matches this object's type and index.  
        /// </summary>
        /// <param name="instruction"></param>
        /// <returns></returns>
        public CodeMatch MatchStore()
        {
            return MatchLoadStore(false);
        }



        /// <summary>
        /// Checks if the instruction is a load and matches this object's type and index.  
        /// </summary>
        /// <param name="instruction"></param>
        /// <returns></returns>
        private CodeMatch MatchLoadStore(bool isStore)
        {
            return new CodeMatch(i =>
            {
                CheckInit();
                bool exit = isStore ? i.IsStloc() == false : i.IsLdloc() == false;
                if(exit || !TypeMatches(i)) return false;


                //TODO:  Not sure what is up with this.  Harmony's LocalIndex() extension doesn't expect a local builder operand, but
                // does correctly translate everything else.  For Example, ldloc.1
                int index;
                LocalBuilder builder = i.operand as LocalBuilder;

                if (builder == null)
                {
                    index = i.LocalIndex();
                }
                else
                {
                    index = builder.LocalIndex;
                }

                return Index == index;
            });
        }

        /// <summary>
        /// Returns the localbuilder type for the instruction.
        /// </summary>
        /// <param name="codeInstruction"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentException"></exception>
        private Type GetOperandType(CodeInstruction codeInstruction)
        {
            LocalBuilder localBuilder = codeInstruction.operand as LocalBuilder;
            if (localBuilder == null) throw new ArgumentException("operand is not a local builder");

            return localBuilder.LocalType;
        }

        /// <summary>
        /// True if the type from the code instruction that this class was created from matches.
        /// </summary>
        /// <param name="codeInstruction"></param>
        /// <returns></returns>
        /// <exception cref="ApplicationException"></exception>
        private bool TypeMatches(CodeInstruction codeInstruction)
        {
            CheckInit();

            Type instructionType = GetOperandType(codeInstruction);

            if (instructionType != this.Type) throw new ApplicationException($"Local variable type mismatch. Expected: {this.Type}, Actual: {instructionType}");

            return true;

        }

        /// <summary>
        /// Inits this object and matches against the instruction.
        /// This must be called before any other methods can be used on this class.
        /// </summary>
        /// <param name="expectStore">Set to true if the instruction should be a store</param>
        /// <param name="codeInstruction"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentException"></exception>
        /// <exception cref="ApplicationException"></exception>
        public CodeMatch MatchAndInit(bool expectStore, Type type)
        {

            return new CodeMatch(i =>
            {
                //Excludes ldloca.  They are included in the IsLdloc() test, but do not have a store complement and therefore unsupported.
                if (i.opcode == OpCodes.Ldloca || i.opcode == OpCodes.Ldloca_S) return false;

                if (((expectStore && i.IsStloc())
                    || (expectStore == false && i.IsLdloc()))
                    == false)
                {
                    return false;
                }

                //--Verify type
                LocalBuilder localBuilder = i.operand as LocalBuilder;
                if (localBuilder == null) throw new ArgumentException("operand is not a local builder");

                if (localBuilder.LocalType != type) throw new ApplicationException($"Local variable type mismatch. Expected: {type}, Actual: {localBuilder.LocalType}");

                Init(i);

                return true;
            });
        }


        /// <summary>
        /// Gets the load version of the instruction
        /// </summary>
        /// <param name="storeInstruction"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentException"></exception>
        /// <exception cref="ApplicationException"></exception>
        private CodeInstruction GetLoadLocal(CodeInstruction storeInstruction)
        {
            if (storeInstruction?.IsStloc() == false)
            {
                throw new ArgumentException("Must be a store instruction", nameof(storeInstruction));
            }

            switch (storeInstruction.opcode)
            {
                case OpCode x when x == OpCodes.Stloc:
                    VerifyLocalBuilder(storeInstruction.operand);
                    return new CodeInstruction(OpCodes.Ldloc, storeInstruction.operand);
                case OpCode x when x == OpCodes.Stloc_S:
                    VerifyLocalBuilder(storeInstruction.operand);
                    return new CodeInstruction(OpCodes.Ldloc_S, storeInstruction.operand);
                case OpCode x when x == OpCodes.Stloc_0:
                    return new CodeInstruction(OpCodes.Ldloc_0);
                case OpCode x when x == OpCodes.Stloc_1:
                    return new CodeInstruction(OpCodes.Ldloc_1);
                case OpCode x when x == OpCodes.Stloc_2:
                    return new CodeInstruction(OpCodes.Ldloc_2);
                case OpCode x when x == OpCodes.Stloc_3:
                    return new CodeInstruction(OpCodes.Ldloc_3);
                default:
                    throw new ApplicationException($"Unexpected opcode: {storeInstruction.opcode}");
            }
        }


        /// <summary>
        /// Gets the store version of the instruction
        /// </summary>
        /// <param name="loadInstruction"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentException"></exception>
        /// <exception cref="ApplicationException"></exception>
        private CodeInstruction GetStoreLocal(CodeInstruction loadInstruction)
        {
            if (loadInstruction?.IsLdloc() == false)
            {
                throw new ArgumentException("Must be a load instruction", nameof(loadInstruction));
            }

            switch (loadInstruction.opcode)
            {
                case OpCode x when x == OpCodes.Ldloc:
                    VerifyLocalBuilder(loadInstruction.operand);
                    return new CodeInstruction(OpCodes.Stloc, loadInstruction.operand);
                case OpCode x when x == OpCodes.Ldloc_S:
                    VerifyLocalBuilder(loadInstruction.operand);
                    return new CodeInstruction(OpCodes.Stloc_S, loadInstruction.operand);
                case OpCode x when x == OpCodes.Ldloc_0:
                    return new CodeInstruction(OpCodes.Stloc_0);
                case OpCode x when x == OpCodes.Ldloc_1:
                    return new CodeInstruction(OpCodes.Stloc_1);
                case OpCode x when x == OpCodes.Ldloc_2:
                    return new CodeInstruction(OpCodes.Stloc_2);
                case OpCode x when x == OpCodes.Ldloc_3:
                    return new CodeInstruction(OpCodes.Stloc_3);
                default:
                    throw new ApplicationException($"Unexpected opcode: {loadInstruction.opcode}");
            }
        }

        /// <summary>
        /// throws an exception if the operand is not a LocalBuilder or is null.
        /// </summary>
        /// <param name="operand">The operand of the CodeInstruction.</param>
        /// <exception cref="ApplicationException"></exception>
        private void VerifyLocalBuilder(object operand)
        {
            if ((operand is LocalBuilder localBuilder) == false || localBuilder == null)
            {
                throw new ApplicationException("*loc/*loc_s operand is not a local builder or is null");
            }
        }
    }
}
