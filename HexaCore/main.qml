import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 1.4 as C1
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1000
    height: 700
    title: qsTr("HEXACORE")

    C1.TabView {
        id: maintab
        currentIndex: 0
        tabsVisible: false
        anchors.fill: parent

        C1.Tab {
            id: tab1
            title: "TC"

            Rectangle {
                id: rectangle
                color: "#ffffff"
                anchors.fill: parent

                Image { source: "images/images/3156482.jpg"; fillMode: Image.Tile; anchors.fill: parent;  opacity: 0.3 }


                Text {
                    id: text1
                    x: 209
                    y: 154
                    text: qsTr("LÜTFEN TC KİMLİK NUMARANIZI 11 HANELİ OLARAK GİRİNİZ")
                    font.family: "Arial"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20

                }

                TextField {
                    id: textField
                    x: 399
                    y: 230
                    width: 200
                    height: 40
                    text: qsTr("")
                    placeholderText: qsTr("TC KİMLİK NUMARASI")
                    maximumLength: 11
                    selectByMouse: true
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.IBeamCursor
                        acceptedButtons: Qt.NoButton
                    }
                }

                Button {
                    id: button
                    x: 442
                    y: 314
                    width: 114
                    height: 40
                    text: qsTr("DEVAM")
                    onClicked: maintab.currentIndex = 1
                }
            }

        }
        C1.Tab {
            id: tab2
            title: "TELEFON"

            Rectangle {
                id: rectangle1
                color: "#ffffff"
                anchors.fill: parent

                Image { source: "images/images/3156482.jpg"; fillMode: Image.Tile; anchors.fill: parent;  opacity: 0.3 }

                Text {
                    id: text2
                    x: 327
                    y: 191
                    text: qsTr("LÜTFEN TELEFON NUMARANIZI GİRİN")
                    font.pixelSize: 20
                }

                TextField {
                    id: textField1
                    x: 399
                    y: 258
                    text: qsTr("")
                    placeholderText: "TELEFON NUMARASI"
                    maximumLength: 11
                }

                Button {
                    id: button1
                    x: 555
                    y: 342
                    text: qsTr("DEVAM")
                    onClicked: maintab.currentIndex = 2
                }

                Button {
                    id: button2
                    x: 318
                    y: 342
                    text: qsTr("GERİ")
                    onClicked: maintab.currentIndex = 0
                }
            }


        }
        C1.Tab {
            id: tab3
            title: "İŞLEM"

            Rectangle {
                id: rectangle2
                color: "#ffffff"
                anchors.fill: parent

                Image { source: "images/images/3156482.jpg"; fillMode: Image.Tile; anchors.fill: parent;  opacity: 0.3 }

                Text {
                    id: text3
                    x: 304
                    y: 184
                    text: qsTr("LÜTFEN BAŞVURU NEDENİNİZİ BELİRTİNİZ ")
                    font.pixelSize: 20
                }

                Button {
                    id: button3
                    x: 111
                    y: 271
                    width: 200
                    height: 50
                    text: qsTr("ŞİKAYET")
                    onClicked: maintab.currentIndex = 3

                }

                Button {
                    id: button4
                    x: 399
                    y: 271
                    width: 200
                    height: 50
                    text: qsTr("İSTEK")
                    onClicked: maintab.currentIndex = 3
                }

                Button {
                    id: button5
                    x: 685
                    y: 271
                    width: 200
                    height: 50
                    text: qsTr("ÖNERİ")
                    onClicked: maintab.currentIndex = 3
                }
            }

        }

        C1.Tab {
            id: tab4
            title: "KATEGORİ"



            Rectangle {
                id: rectangle3
                color: "#ffffff"
                anchors.fill: parent

                Image { source: "images/images/3156482.jpg"; fillMode: Image.Tile; anchors.fill: parent;  opacity: 0.3 }

                Button {
                    id: button6
                    x: 399
                    y: 118
                    width: 200
                    height: 50
                    text: qsTr("ÇEVRE")
                    onClicked: {
                        column.visible = true
                        column1.visible = false
                        column2.visible = false
                    }
                }

                Button {
                    id: button7
                    x: 95
                    y: 118
                    width: 200
                    height: 50
                    text: qsTr("ULAŞIM")
                    onClicked: {
                        column.visible = false
                        column1.visible = true
                        column2.visible = false
                    }

                }

                Button {
                    id: button8
                    x: 699
                    y: 118
                    width: 200
                    height: 50
                    text: qsTr("İMAR")

                    onClicked: {
                        column.visible = false
                        column1.visible = false
                        column2.visible = true
                    }
                }

                Column {
                    id: column
                    x: 399
                    y: 195
                    width: 200
                    height: 400
                    spacing: 25
                    visible: false

                    Button {
                        id: button15
                        width: 180
                        text: qsTr("ÇÖP TOPLANMASI")
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: maintab.currentIndex = 4
                    }

                    Button {
                        id: button16
                        width: 180
                        text: qsTr("YEŞİL ALAN - PARK ")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button17
                        width: 180
                        text: qsTr("SES ŞİKAYETLERİ")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button18
                        width: 180
                        text: qsTr("ARAÇ PARK")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button19
                        width: 180
                        text: qsTr("DİĞER")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

                Column {
                    id: column1
                    x: 95
                    y: 195
                    width: 200
                    height: 400
                    spacing: 25
                    visible: false

                    Button {
                        id: button9
                        width: 180
                        text: qsTr("TOPLU TAŞIMA")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button99
                        width: 180
                        text: qsTr("ARABA KAZASI")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button91
                        width: 180
                        text: qsTr("ÜST YAPI SORUNLARI")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button92
                        width: 180
                        text: qsTr("ALT YAPI SORUNLARI")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button93
                        width: 180
                        text: qsTr("KAVŞAK PROBLEMLERİ")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button94
                        width: 180
                        text: qsTr("DİĞER")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

                Column {
                    id: column2
                    x: 699
                    y: 195
                    width: 200
                    height: 400
                    spacing: 25
                    visible: false

                    Button {
                        id: button10
                        width: 180
                        text: qsTr("TAPU KADASTRO")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button11
                        width: 180
                        text: qsTr("KAMULAŞTIRMA")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        id: button12
                        width: 180
                        text: qsTr("DİĞER")
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

                Text {
                    id: text4
                    x: 366
                    y: 52
                    text: qsTr("İŞLEM KATEGORİNİZİ SEÇİNİZ")
                    font.pixelSize: 20
                }
            }

        }

        C1.Tab {
            id: tab5
            title: "TARAMA"

            Rectangle {
                id: rectangle4
                color: "#ffffff"
                anchors.fill: parent
                Image { source: "images/images/3156482.jpg"; fillMode: Image.Tile; anchors.fill: parent;  opacity: 0.3 }


            }

            Text {
                id: text5
                x: 194
                y: 251
                text: "TARAMA İŞLEMİ İÇİN BELGENİZİ CİHAZA YERLEŞTİRİN VE BEKLEYİN"
                font.pixelSize: 20
            }

        }

    }

}
