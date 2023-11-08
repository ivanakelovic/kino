using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using MySql.Data.MySqlClient;

namespace Kino
{
    //Singleton šablon za klasu, gdje može postojati samo jedna instanca objekta ovog tipa 
    class Konekcija
    {
        //
        public static MySqlConnection konekcija = null;

        public static MySqlConnection GetConnection()
        {
            //Pravi se nova konekcija samo ako je null, to jeste ako ne postoji
            if (konekcija == null)
            {
                konekcija = new MySqlConnection("server=localhost; database=tmp; username=root;password=;");
                konekcija.Open();
            }
            //Vraća se konekcija, ili postojeća ili nova koja se napravila u prethodnom koraku.
            return konekcija;
        }

        //Metoda помоћу које се zatvara konekcija
        public static void CloseConnection()
        {
            if (konekcija != null)
            {
                konekcija.Close();
                konekcija = null;
            }
        }
    }
}
