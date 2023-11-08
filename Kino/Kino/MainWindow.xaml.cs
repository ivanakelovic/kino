using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using MySql.Data.MySqlClient;

namespace Kino
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            //ComboBox za pretragu aw potavlja inicijalno na Svi (podrazumjeva se da su izabrani svi filmovi za prikaz)
            cmbZanr.SelectedItem = "Svi";
            //Funkcija koja iz baze popunjava ComboBox kontrolu sa svim RAZLIČITIM žanrovima iz baze
            PopuniZanrove();
            //Funkcija koja iz baze pribavlja sve filmove i prikazuje listu
            UcitajFilmove("Svi", "");
        }
        
        //Funkcija za popunjavanje ComboBox kontrole sa različitim žanrovima
        private void PopuniZanrove() 
        {
            //Dodaje se statički prva stavka Svi (označava pretragu po svim žanrovima)
            cmbZanr.Items.Add("Svi");
            //Kreira se upit kojim se pribavljaju svi žanrovi i izvršava se komanda
            string upit = "SELECT DISTINCT zanr FROM kino ORDER BY zanr ASC";
            MySqlCommand komanda = new MySqlCommand(upit, Konekcija.GetConnection());
            MySqlDataReader reader = komanda.ExecuteReader();

            //Prolazi se kroz sve redove dobijene iz baze i dodaju se stavke u ComboBox
            while (reader.Read())
                cmbZanr.Items.Add(reader["zanr"].ToString());
            reader.Close();
        }
        
        //Funkcija za učitavanje filmova (koristi se i prilikom pretrage), ima 2 argumwnta, žanr i naziv ukoliko se koristi za pretragu
        private void UcitajFilmove(string zanrPretraga, string naziv)
        {
            //Očisti se StackPanel, kako bi nakon pretrage bili prikazani novi rezultati
            spFilmovi.Children.Clear();
            //Upit za pribavljanje svih filmova iz baze
            string  upit = "SELECT * FROM kino WHERE 1=1";
            //Ukoliko je kod pretrage izabran neki žanr, izabrani žanr se dodaje upitu
            if (zanrPretraga != "Svi")
                upit += " AND zanr='" + zanrPretraga + "'";
            //Ako je kod pretrage upisan naslov onda se upitu dodaje uslov za filtriranje naslova
            if (txtNaziv.Text != "")
                upit += " AND naziv LIKE '%" + naziv + "%'";

            MySqlCommand komanda = new MySqlCommand(upit, Konekcija.GetConnection());
            MySqlDataReader reader = komanda.ExecuteReader();

            while (reader.Read())
            {
                //Svi podaci iz baze se čitaju i smještaju u lokalne promjenljive, radi jednostavnosti
                string naslov = reader["naziv"].ToString();
                string reditelj = reader["reditelj"].ToString();
                string zanr = reader["zanr"].ToString();
                string trajanje = reader["trajanje"].ToString();
                string drzava = reader["drzava"].ToString();
                string slika = reader["slika"].ToString();
                string opis = reader["opis"].ToString();
                
                //Kreira se kontrola za svaki film i dodaje se na StackPanel
                Film_Lista film = new Film_Lista(naslov, reditelj, zanr, drzava, trajanje, slika);
                spFilmovi.Children.Add(film);
                //Kada se na kntrolu nadnese miš prikazuje se opis kao ToolTip
                film.ToolTip = opis;
            }
            reader.Close();
        }

        private void btnPretrazi_Click(object sender, RoutedEventArgs e)
        {
            //Kada se klikne na taster Pretraži pozove se funkcija UcitajFilmove i proslijede se žanr i naziv filma
            UcitajFilmove(cmbZanr.SelectedItem.ToString(), txtNaziv.Text);
        }

        private void btnPoništi_Click(object sender, RoutedEventArgs e)
        {
            //Inicijalizuju se polja za pretragu i prikažu se svi filmovi u listi
            txtNaziv.Text = "";
            cmbZanr.SelectedItem = "Svi";
            UcitajFilmove("Svi", "");
        }
    }
}
