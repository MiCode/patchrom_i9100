.class public Landroid/lgt/handset/HandsetProperty;
.super Ljava/lang/Object;
.source "HandsetProperty.java"


# static fields
.field public static final BASEID:Ljava/lang/String; = "BASEID"

.field public static final BASELAT:Ljava/lang/String; = "BASELAT"

.field public static final BASELONG:Ljava/lang/String; = "BASELONG"

.field public static final BILL_GW_IP:Ljava/lang/String; = "BILL_GW_IP"

.field public static final DEFAULT_BROWSER:Ljava/lang/String; = "DEFAULT_BROWSER"

.field public static final DEVICE_GROUP:Ljava/lang/String; = "DEVICE_GROUP"

.field public static final DNS1:Ljava/lang/String; = "DNS1"

.field public static final DNS2:Ljava/lang/String; = "DNS2"

.field public static final LGT_DATA_NETWORK_3G_STATE:Ljava/lang/String; = "LGT_DATA_NETWORK_3G_STATE"

.field public static final LGT_OZ_STARTPAGE:Ljava/lang/String; = "LGT_OZ_STARTPAGE"

.field public static final NID:Ljava/lang/String; = "NID"

.field public static final PREFERRED_DATA_NETWORK_MODE:Ljava/lang/String; = "PREFERRED_DATA_NETWORK_MODE"

.field public static final PROCESSOR_INFO:Ljava/lang/String; = "PROCESSOR_INFO"

.field public static final ROAMING_AREA:Ljava/lang/String; = "ROAMING_AREA"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final UNKNOWN_VALUE:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LGUP_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "NID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNID()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v0, "SID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "BASEID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASEID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "BASELAT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELAT()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "BASELONG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBASELONG()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_4
    const-string v0, "DNS1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_5
    const-string v0, "DNS2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDNS2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_6
    const-string v0, "ROAMING_AREA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getROAMING_AREA()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_7
    const-string v0, "BILL_GW_IP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getBILL_GW_IP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_8
    const-string v0, "DEVICE_GROUP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEVICE_GROUP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_9
    const-string v0, "PROCESSOR_INFO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPROCESSOR_INFO()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_a
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "REG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CURRENTCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "PHONE_NUMBER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ESN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "BESTPN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "WIPINET_VAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 68
    :cond_b
    invoke-static {p0}, Landroid/lgt/handset/HandsetProperty;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_c
    const-string v0, "NETWORK_TYPE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNETWORK_TYPE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_d
    const-string v0, "NETWORK_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getNetworkTime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_e
    const-string v0, "PREFERRED_DATA_NETWORK_MODE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :cond_f
    const-string v0, "LGT_DATA_NETWORK_3G_STATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_10
    const-string v0, "LGT_OZ_STARTPAGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getLGT_OZ_STARTPAGE()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_11
    const-string v0, "DEFAULT_BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/lgt/handset/HandsetProperty;->getDEFAULT_BROWSER()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static getBASEID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, ""

    return-object v0
.end method

.method private static getBASELAT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    return-object v0
.end method

.method private static getBASELONG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, ""

    return-object v0
.end method

.method private static getBILL_GW_IP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, ""

    return-object v0
.end method

.method private static getDEFAULT_BROWSER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, ""

    return-object v0
.end method

.method private static getDEVICE_GROUP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, ""

    return-object v0
.end method

.method private static getDNS1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, ""

    return-object v0
.end method

.method private static getDNS2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, ""

    return-object v0
.end method

.method private static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 170
    const-string v0, ""

    return-object v0
.end method

.method private static getLGT_DATA_NETWORK_3G_STATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, ""

    return-object v0
.end method

.method private static getLGT_OZ_STARTPAGE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, ""

    return-object v0
.end method

.method private static getNETWORK_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    return-object v0
.end method

.method private static getNID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    return-object v0
.end method

.method private static getNetworkTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, ""

    return-object v0
.end method

.method private static getPREFERRED_DATA_NETWORK_MODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, ""

    return-object v0
.end method

.method private static getPROCESSOR_INFO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, ""

    return-object v0
.end method

.method private static getROAMING_AREA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, ""

    return-object v0
.end method

.method private static getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, ""

    return-object v0
.end method
