.class final enum Lcom/android/server/WifiService$BoosterMode;
.super Ljava/lang/Enum;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BoosterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/WifiService$BoosterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/WifiService$BoosterMode;

.field public static final enum BTCoexMode:Lcom/android/server/WifiService$BoosterMode;

.field public static final enum FullMode:Lcom/android/server/WifiService$BoosterMode;

.field public static final enum Hotspot3GMode:Lcom/android/server/WifiService$BoosterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/android/server/WifiService$BoosterMode;

    const-string v1, "FullMode"

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$BoosterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    .line 164
    new-instance v0, Lcom/android/server/WifiService$BoosterMode;

    const-string v1, "Hotspot3GMode"

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiService$BoosterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$BoosterMode;->Hotspot3GMode:Lcom/android/server/WifiService$BoosterMode;

    .line 165
    new-instance v0, Lcom/android/server/WifiService$BoosterMode;

    const-string v1, "BTCoexMode"

    invoke-direct {v0, v1, v4}, Lcom/android/server/WifiService$BoosterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$BoosterMode;->BTCoexMode:Lcom/android/server/WifiService$BoosterMode;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/WifiService$BoosterMode;

    sget-object v1, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/WifiService$BoosterMode;->Hotspot3GMode:Lcom/android/server/WifiService$BoosterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/WifiService$BoosterMode;->BTCoexMode:Lcom/android/server/WifiService$BoosterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/WifiService$BoosterMode;->$VALUES:[Lcom/android/server/WifiService$BoosterMode;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/WifiService$BoosterMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    const-class v0, Lcom/android/server/WifiService$BoosterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/WifiService$BoosterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/WifiService$BoosterMode;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->$VALUES:[Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual {v0}, [Lcom/android/server/WifiService$BoosterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/WifiService$BoosterMode;

    return-object v0
.end method
