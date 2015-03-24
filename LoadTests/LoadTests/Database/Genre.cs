using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoadTests.Database
{
    [Table("Genre")]
    public class Genre
    {
        #region constructor

        public Genre()
        {
            Albums = new List<Album>();
        }

        #endregion

        #region public property
        
        public virtual List<Album> Albums { get; protected set; }

        public string Description { get; set; }
        public int GenreId { get; set; }
        public string Name { get; set; }

        #endregion
    }
}