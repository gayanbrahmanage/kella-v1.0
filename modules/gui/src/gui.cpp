
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
#include "gui.h"

gui::gui():boxMain(Gtk::ORIENTATION_VERTICAL,5), // Main
          frame_base_window("Base"),
          boxBase(Gtk::ORIENTATION_VERTICAL), //left
          sbtn_manual(100,50, sbtn_manual_name, 0.2,0.2,0.2),
          base(250,250),
          frame_motor1_window("Motor L"),
          boxMotor1(Gtk::ORIENTATION_HORIZONTAL),
          sbtn_Brake1(50,50, Brake1_str, 0.2,0.2,0.2),
          sbtn_Dir1(50,50, Dir1_str, 0.2,0.2,0.2),

          frame_motor2_window("Motor R"),
          boxMotor2(Gtk::ORIENTATION_HORIZONTAL),
          sbtn_Brake2(50,50, Brake2_str, 0.2,0.2,0.2),
          sbtn_Dir2(50,50, Dir2_str, 0.2,0.2,0.2),

          frame_text_window(""),
          boxText(Gtk::ORIENTATION_VERTICAL)

        {   // creates a new button with label "Hello World".

        // Sets the border width of the window.
        set_title("KELLA-Contol Panel");
        //set_default_size(1260, 820);
        boxMain.set_border_width(10);
        add(boxMain);

        boxMain.pack_start(frame_base_window);
        boxBase.set_border_width(5);
        frame_base_window.add(boxBase);
        boxBase.pack_start(sbtn_manual, FALSE, FALSE, 0);
        boxBase.pack_start(base, FALSE, FALSE, 0);


        boxBase.pack_start(frame_motor1_window);
        boxMotor1.set_border_width(5);
        frame_motor1_window.add(boxMotor1);
        auto infoBarContainer1 =dynamic_cast<Gtk::Container*>(InfoBar1.get_content_area());
        if (infoBarContainer1) infoBarContainer1->add(Message_Label1);
        boxMotor1.pack_start(InfoBar1, Gtk::PACK_SHRINK);
        boxMotor1.pack_start(sbtn_Brake1, FALSE, FALSE, 0);
        boxMotor1.pack_start(sbtn_Dir1, FALSE, FALSE, 0);

        boxBase.pack_start(frame_motor2_window);
        boxMotor2.set_border_width(5);
        frame_motor2_window.add(boxMotor2);
        auto infoBarContainer2 =dynamic_cast<Gtk::Container*>(InfoBar2.get_content_area());
        if (infoBarContainer2) infoBarContainer2->add(Message_Label2);
        boxMotor2.pack_start(InfoBar2, Gtk::PACK_SHRINK);
        boxMotor2.pack_start(sbtn_Brake2, FALSE, FALSE, 0);
        boxMotor2.pack_start(sbtn_Dir2, FALSE, FALSE, 0);

        boxMain.pack_start(frame_text_window);
        boxText.set_border_width(5);
        frame_text_window.add(boxText);
        TextBuffer = Gtk::TextBuffer::create();
        TextView.set_buffer(TextBuffer);
        text_ScrolledWindow.add(TextView);
        text_ScrolledWindow.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);
        boxText.pack_start(text_ScrolledWindow);


        // dispatcher
        Dispatcher_esp32.connect(sigc::mem_fun(*this, &gui::on_notification_from_thread_esp32));
        Dispatcher_jstick.connect(sigc::mem_fun(*this, &gui::on_notification_from_thread_jstick));

        show_all_children();
}

gui::~gui(){

}
