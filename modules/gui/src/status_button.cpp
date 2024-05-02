#include "status_button.h"

status_button::status_button(int w, int h,std::string& name_, double r_, double g_, double b_){

  set_size_request(w,h);

}

status_button::~status_button(){

}

bool status_button::on_draw(const Cairo::RefPtr<Cairo::Context>& cr){

  Gtk::DrawingArea::on_draw(cr);
  int w  = get_allocation().get_width()  - 10;
  int h  = get_allocation().get_height() - 10;

  cr->set_source_rgb(r, g, b);
  cr->set_line_width(1.0);
  cr->translate(5, 5);
  cr->rectangle(0, 0, w, w);

  if (status)
    cr->fill_preserve();

  cr->stroke();

  if (status)
    cr->set_source_rgb(1.0, 1.0, 1.0);

  cr->set_font_size(font_size);
  // FIXME: There are better ways to center text

  cr->move_to(0, h/2+font_size/2);
  cr->show_text(name);

  return true;
}


void status_button::update(bool t, std::string name_, double r_, double g_, double b_, int font_size_){
  name=name_;
  status=t;
  r=r_;
  g=g_;
  b=b_;
  font_size=font_size_;
  queue_draw();
}

