using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QM_PityUnlock
{
    public enum PityMode
    {
        Invalid = 0,
        /// <summary>
        /// Will always an item that has not been unlocked.
        /// </summary>
        Always,

        /// <summary>
        /// An additive percentage for each already unlocked pull.  
        /// Ex:  If the additive percentage is 10%, a third attempt will have a 20% chance to be a guaranteed new unlock. 
        /// </summary>
        Percentage,

        /// <summary>
        /// After X failed attempts, the next pull is guaranteed to be an item not already unlocked.
        /// </summary>
        Hard
    }
}
