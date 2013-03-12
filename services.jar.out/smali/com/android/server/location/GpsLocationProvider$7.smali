.class synthetic Lcom/android/server/location/GpsLocationProvider$7;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider$Vendor;->values()[Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    :try_start_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$7;->$SwitchMap$com$android$server$location$GpsLocationProvider$Vendor:[I

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
