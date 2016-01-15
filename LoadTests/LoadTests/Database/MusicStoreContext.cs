using System.Configuration;
using System.Data.Entity;

namespace LoadTests.Database
{
    public class MusicStoreContext : DbContext, IMusicStoreContext
    {
        #region constructor

        static MusicStoreContext()
        {
            System.Data.Entity.Database.SetInitializer<MusicStoreContext>(null);
        }

        public MusicStoreContext(string connectionName)
        {
            // Load connection fromm app.config
            ExeConfigurationFileMap configFileMap = new ExeConfigurationFileMap {ExeConfigFilename = System.Reflection.Assembly.GetExecutingAssembly().ManifestModule.Name + ".config"};
            var config = ConfigurationManager.OpenMappedExeConfiguration(configFileMap, ConfigurationUserLevel.None);
            Database.Connection.ConnectionString = config.ConnectionStrings.ConnectionStrings[connectionName].ConnectionString;

            // Disable to load all data once
            this.Configuration.LazyLoadingEnabled = false;
        }

        #endregion

        #region IMusicStoreContext interface

        public IDbSet<Album> Albums { get; set; }

        public IDbSet<Genre> Genres { get; set; }

        #endregion
    }
}