#include "base_widget.h"

base_widget::base_widget(int w, int h){
  set_size_request(w,h);
  update(0.0,0.0,0.0,0.0);
}

base_widget::~base_widget(){

}

bool base_widget::on_draw(const Cairo::RefPtr<Cairo::Context>& cr){

  // double p = 1.0 - (pos + 1.0) / 2.0;

  int w  = get_allocation().get_width()-10;
  int h  = get_allocation().get_height()-10;

  cr->translate(5, 5);

  // Outer Rectangle
  cr->set_source_rgb(0.0, 0.0, 0.0);
  cr->set_line_width(1.0);
  cr->rectangle(0, 0, w, h);
  cr->stroke();

  cr->arc(w/2, h/2, w/2, 0.0, 2.0 * M_PI);
  cr->set_source_rgba(0.0, 0.0, 0.0, 0.1);
  cr->fill();

  double rw=0.1*h;
  double rl=0.8*h/2;

  cr->set_source_rgb(0.8, 0.6, 0.6);
  cr->set_line_width(1.0);
  cr->rectangle(0.01*w, 0.2*h, 0.2*w, 0.3*h);
  cr->fill();
  cr->stroke();

  cr->set_source_rgb(0.6, 0.6, 0.6);
  cr->set_line_width(1.0);
  cr->rectangle(0.01*w, 0.5*h, 0.2*w, 0.3*h);
  cr->fill();
  cr->stroke();

  cr->set_source_rgb(0.8, 0.6, 0.6);
  cr->set_line_width(1.0);
  cr->rectangle(0.79*w, 0.2*h, 0.2*w, 0.3*h);
  cr->fill();
  cr->stroke();

  cr->set_source_rgb(0.6, 0.6, 0.6);
  cr->set_line_width(1.0);
  cr->rectangle(0.79*w, 0.5*h, 0.2*w, 0.3*h);
  cr->fill();
  cr->stroke();


  // cr->set_source_rgb(0.4, 0.0, 1.0);
  // cr->set_line_width(1.0);
  // cr->rectangle(rl-rl*posL+0.1*h/2, h/2-rw/2, rl*posL, rw);
  // cr->fill();
  // cr->stroke();
  //
  // cr->move_to(w*0.1, h*0.55);
  // cr->set_font_size(15);
  // cr->set_source_rgb(0.0, 0.0, 0.0);
  // cr->show_text("L");

  //
//
//   cr->set_source_rgb(0.6, 0.6, 0.6);
//   cr->set_line_width(1.0);
//   cr->rectangle(0.1*h/2+w/2, h/2-rw/2, rl, rw);
//   cr->fill();
//   cr->stroke();
//
//   cr->set_source_rgb(0.4, 0.0, 1.0);
//   cr->set_line_width(1.0);
//   cr->rectangle(0.1*h/2+w/2, h/2-rw/2, rl*posR, rw);
//   cr->fill();
//   cr->stroke();
//
//   cr->move_to(w*0.8, h*0.55);
//   cr->set_font_size(15);
//   cr->set_source_rgb(0.0, 0.0, 0.0);
//   cr->show_text("R");
//
//  //
//
//   cr->set_source_rgb(0.6, 0.6, 0.6);
//   cr->set_line_width(1.0);
//   cr->rectangle(-rw/2+w/2, 0.1*h/2, rw, rl);
//   cr->fill();
//   cr->stroke();
//
//   cr->set_source_rgb(0.4, 0.0, 1.0);
//   cr->set_line_width(1.0);
//   cr->rectangle(-rw/2+w/2, rl-rl*posF+0.1*h/2, rw, rl*posF);
//   cr->fill();
//   cr->stroke();
//
//   cr->move_to(w*0.45, h*0.2);
//   cr->set_font_size(15);
//   cr->set_source_rgb(0.0, 0.0, 0.0);
//   cr->show_text("F");
//
//
// //
//   cr->set_source_rgb(0.6, 0.6, 0.6);
//   cr->set_line_width(1.0);
//   cr->rectangle(-rw/2+w/2, h/2+0.1*h/2, rw, rl);
//   cr->fill();
//   cr->stroke();
//
//   cr->set_source_rgb(0.4, 0.0, 1.0);
//   cr->set_line_width(1.0);
//   cr->rectangle(-rw/2+w/2, h/2+0.1*h/2, rw, rl*posB);
//   cr->fill();
//   cr->stroke();
//
//   cr->move_to(w*0.45, h*0.9);
//   cr->set_font_size(15);
//   cr->set_source_rgb(0.0, 0.0, 0.0);
//   cr->show_text("B");

  // int dh = h*p;
  // cr->rectangle(0, h - dh, w, dh);
  // cr->fill();

  return true;

}

void base_widget::update(double l, double r, double f,double b){
  posL = l;
  posR = r;
  posF = f;
  posB = b;
  queue_draw();
}
