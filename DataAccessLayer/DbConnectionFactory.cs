using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace DataAccessLayer.Dapper
{
    public class DbConnectionFactory
    {
        public static SqlConnection Create()
        {
            var connStr = ConfigurationManager.ConnectionStrings["DBConnection"]?.ConnectionString;
            var localConfig = "";

            if (string.IsNullOrEmpty(connStr))
            {
                localConfig = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Web.local.config");

                if (File.Exists(localConfig))
                {
                    var map = new ExeConfigurationFileMap { ExeConfigFilename = localConfig };
                    var config = ConfigurationManager.OpenMappedExeConfiguration(map, ConfigurationUserLevel.None);

                    connStr = config.ConnectionStrings.ConnectionStrings["DBConnection"]?.ConnectionString;
                }
            }


            if (string.IsNullOrEmpty(connStr))
                throw new Exception("Database connection string 'DBConnection' not found in config: " + connStr + " in: " + localConfig);

            return new SqlConnection(connStr);
        }
    }
}