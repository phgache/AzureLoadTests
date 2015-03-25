using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace LoadTests.Database
{
    [Table("Album")]
    public class Album
    {
        public string AlbumArtUrl { get; set; }
        public int AlbumId { get; set; }
        public int ArtistId { get; set; }
        public DateTime Created { get; set; }
        public virtual Genre Genre { get; set; }
        public int GenreId { get; set; }
        public decimal Price { get; set; }
        public string Title { get; set; }   
    }
}