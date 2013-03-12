.class public Lcom/android/server/wifi_offload/ExceptionalAppList;
.super Ljava/lang/Object;
.source "ExceptionalAppList.java"


# static fields
.field public static appList:[Ljava/lang/String;

.field public static appList_Tablet:[Ljava/lang/String;

.field public static whiteListApps:[Ljava/lang/String;

.field public static wifiAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.cequint.ecid"

    aput-object v1, v0, v3

    const-string v1, "com.mobitv.client.nfl2010"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.vmmhux"

    aput-object v1, v0, v5

    const-string v1, "com.vzw.hs.android.modlite"

    aput-object v1, v0, v6

    const-string v1, "com.samsung.vvm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.vznavigator.SCHI535"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.vznavigator.SCHI200"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.vznavigator.SCHI415"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.vznavigator.SCHI605"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.sec.android.app.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.samsung.tutorial"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.diotek.penmemo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.samsung.spg"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.peel.app"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.sec.android.app.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.android.hiddenmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.samsungtest.SimpleFunctionTest"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.sec.android.app.phoneutil"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.app.factorymode"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.sec.android.app.dlna"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.sec.android.app.ve"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.gameloft.android.VERIZON.GloftLPHP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    .line 73
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.mobitv.client.nfl2010"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.vmmhux"

    aput-object v1, v0, v4

    const-string v1, "com.vzw.hs.android.modlite"

    aput-object v1, v0, v5

    const-string v1, "com.vznavigator.Tablet"

    aput-object v1, v0, v6

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.samsung.tutorial"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.sec.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.diotek.penmemo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.samsung.spg"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.peel.app"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.android.app.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.hiddenmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.samsungtest.SimpleFunctionTest"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.sec.android.app.phoneutil"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.sec.android.app.factorymode"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.sec.android.app.dlna"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.app.ve"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.gameloft.android.VERIZON.GloftLPHP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    .line 138
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v3

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v5

    const-string v1, "com.android.vending"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.apps.books"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.amazon.kindle"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.samsung.mediahub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.samsung.mediahub.ics"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.mediahub.vzw"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.vzw.hss.myverizontabletlte"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.netflix.mediaclient"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.socialhub"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.thedaily.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.gravitymobile.app.hornbill"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->whiteListApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
