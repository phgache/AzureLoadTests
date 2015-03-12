using System;
using System.Data.Entity;

namespace LoadTests.Database
{
    public interface IMusicStoreContext : IDisposable
    {
        IDbSet<Album> Albums { get; set; } // Album
        IDbSet<Genre> Genres { get; set; } // Genre
    }
}