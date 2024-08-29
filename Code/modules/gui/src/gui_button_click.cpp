#include "gui.h"
void gui::on_output_view_select_None_button_clicked(){
  //std::cout<<"Non "<<std::endl;
  msg->output_view_source.write(0);
  
}

void gui::on_output_view_select_video_button_clicked(){
  //std::cout<<"video "<<std::endl;
  msg->output_view_source.write(1);

}

void gui::on_output_view_select_detect_button_clicked(){
  //std::cout<<"Detect "<<std::endl;
  msg->output_view_source.write(2);
}

void gui::on_output_view_select_disp_button_clicked(){
  //std::cout<<"Disp "<<std::endl;
  msg->output_view_source.write(3);
}

void gui::on_output_view_select_3D_button_clicked(){
  //std::cout<<"3D "<<std::endl;
  msg->output_view_source.write(4);
}


void gui::on_browse_button_clicked(){

  Gtk::FileChooserDialog dialog("Please choose a file",
  Gtk::FILE_CHOOSER_ACTION_OPEN);
  dialog.set_transient_for(*this);

  dialog.add_button("_Cancel", Gtk::RESPONSE_CANCEL);
  dialog.add_button("_Open", Gtk::RESPONSE_OK);

  auto filter_mp4= Gtk::FileFilter::create();
  filter_mp4->set_name(".mp4");
  filter_mp4->add_pattern("*.mp4");
  dialog.add_filter(filter_mp4);

  int result = dialog.run();
  //Handle the response:
  switch(result)
  {
    case(Gtk::RESPONSE_OK):
    {
      std::cout << "Open clicked." << std::endl;
      //Notice that this is a std::string, not a Glib::ustring.
      std::string filename = dialog.get_filename();
      //std::cout << "File selected: " <<  filename << std::endl;
      msg->input_file_name.write(filename);
      break;
    }
    case(Gtk::RESPONSE_CANCEL):
    {
      //std::cout << "Cancel clicked." << std::endl;
      break;
    }
    default:
    {
      //std::cout << "Unexpected button clicked." << std::endl;
      break;
    }
  }

}
