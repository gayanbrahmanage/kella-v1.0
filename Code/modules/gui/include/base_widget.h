
#ifndef base_widget_H
#define base_widget_H

#include <gtkmm/drawingarea.h>
#include <gtkmm/alignment.h>

class base_widget : public Gtk::Alignment{

private:
  double posL,posR,posF,posB;

public:
  base_widget(int width, int height);
  ~base_widget();
  bool on_draw(const Cairo::RefPtr<Cairo::Context>& context) override;
  void update(double l, double r, double f,double b);

};

#endif
