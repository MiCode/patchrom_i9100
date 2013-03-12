.class public final enum Lcom/android/server/location/GpsLocationProvider$Vendor;
.super Ljava/lang/Enum;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/location/GpsLocationProvider$Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CHN_CHN:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CHN_CHU:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

.field public static final enum USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 999
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "USA_TMO"

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "USA_ATT"

    invoke-direct {v0, v1, v4}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "JPN_DCM"

    invoke-direct {v0, v1, v5}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CAD_TLS"

    invoke-direct {v0, v1, v6}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CAD_BMC"

    invoke-direct {v0, v1, v7}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CAD_RWC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "KOR_SKT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "KOR_KT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "KOR_LGT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CHN_CMC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CHN_CTC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CHN_CHU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "CHN_CHN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider$Vendor;

    new-instance v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    const-string v1, "NO_OPERATOR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

    .line 998
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider$Vendor;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_TMO:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->USA_ATT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->JPN_DCM:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_TLS:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_BMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CAD_RWC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_SKT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_KT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->KOR_LGT:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CTC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHU:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CHN:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/server/location/GpsLocationProvider$Vendor;->NO_OPERATOR:Lcom/android/server/location/GpsLocationProvider$Vendor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->$VALUES:[Lcom/android/server/location/GpsLocationProvider$Vendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 998
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/GpsLocationProvider$Vendor;
    .locals 1
    .parameter "name"

    .prologue
    .line 998
    const-class v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GpsLocationProvider$Vendor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/GpsLocationProvider$Vendor;
    .locals 1

    .prologue
    .line 998
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$Vendor;->$VALUES:[Lcom/android/server/location/GpsLocationProvider$Vendor;

    invoke-virtual {v0}, [Lcom/android/server/location/GpsLocationProvider$Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/GpsLocationProvider$Vendor;

    return-object v0
.end method
