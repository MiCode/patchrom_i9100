.class final enum Lcom/android/server/WifiService$HS20_ConType;
.super Ljava/lang/Enum;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HS20_ConType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/WifiService$HS20_ConType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/WifiService$HS20_ConType;

.field public static final enum HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

.field public static final enum HS20_CONNECTED_VSP:Lcom/android/server/WifiService$HS20_ConType;

.field public static final enum HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/android/server/WifiService$HS20_ConType;

    const-string v1, "HS20_CONNECTED_HSP"

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$HS20_ConType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    .line 171
    new-instance v0, Lcom/android/server/WifiService$HS20_ConType;

    const-string v1, "HS20_CONNECTED_VSP"

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiService$HS20_ConType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_VSP:Lcom/android/server/WifiService$HS20_ConType;

    .line 172
    new-instance v0, Lcom/android/server/WifiService$HS20_ConType;

    const-string v1, "HS20_DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/WifiService$HS20_ConType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/WifiService$HS20_ConType;

    sget-object v1, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_VSP:Lcom/android/server/WifiService$HS20_ConType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/WifiService$HS20_ConType;->$VALUES:[Lcom/android/server/WifiService$HS20_ConType;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/WifiService$HS20_ConType;
    .locals 1
    .parameter "name"

    .prologue
    .line 169
    const-class v0, Lcom/android/server/WifiService$HS20_ConType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/WifiService$HS20_ConType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/WifiService$HS20_ConType;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/server/WifiService$HS20_ConType;->$VALUES:[Lcom/android/server/WifiService$HS20_ConType;

    invoke-virtual {v0}, [Lcom/android/server/WifiService$HS20_ConType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/WifiService$HS20_ConType;

    return-object v0
.end method
