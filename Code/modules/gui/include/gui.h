/******************************************************************************

    C++ Script License - Version 1.0
    Author: Gayan Brahmanage, Ph.D.
    Contact: gayansampathefac@gmail.com
    LinkedIn: https://www.linkedin.com/in/gayan-brahmanage/
    GitHub: https://github.com/gayanbrahmanage

    This C++ script is licensed under the terms of the MIT license. Please see
    the following terms and conditions:

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

******************************************************************************/

#ifndef gui_H
#define gui_H


#include <gtkmm/button.h>
#include <gtkmm/window.h>
#include <gtkmm.h>
#include <gtkmm/application.h>
#include <thread>
#include <message.h>
#include <parameters.h>
#include "status_button.h"
#include "base_widget.h"

class gui: public Gtk::Window{
  private:
    // Dispatcher handler.
    void on_notification_from_thread_esp32();
    void on_notification_from_thread_jstick();

  public:
    Glib::Dispatcher Dispatcher_esp32;
    Glib::Dispatcher Dispatcher_jstick;

    message* msg= new message();

    gui();
    virtual ~gui();

  protected:
    Gtk::Box boxMain;
    Gtk::Frame frame_base_window;
    Gtk::Box boxBase;
    status_button sbtn_manual;
    std::string sbtn_manual_name="Manual";
    base_widget base;

    Gtk::Frame frame_motor1_window;
    Gtk::Box boxMotor1;
    Gtk::InfoBar InfoBar1;
    Gtk::Label Message_Label1;
    status_button sbtn_Brake1;
    status_button sbtn_Dir1;
    std::string Brake1_str="B";
    std::string Dir1_str="D";

    Gtk::Frame frame_motor2_window;
    Gtk::Box boxMotor2;
    Gtk::InfoBar InfoBar2;
    Gtk::Label Message_Label2;
    status_button sbtn_Brake2;
    status_button sbtn_Dir2;
    std::string Brake2_str="B";
    std::string Dir2_str="D";

    Gtk::Frame frame_text_window;
    Gtk::Box boxText;
    Gtk::ScrolledWindow text_ScrolledWindow;
    Gtk::TextView TextView;
    Glib::RefPtr<Gtk::TextBuffer> TextBuffer;


};

#endif
