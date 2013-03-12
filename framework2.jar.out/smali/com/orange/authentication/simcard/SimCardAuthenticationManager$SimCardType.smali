.class public final enum Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
.super Ljava/lang/Enum;
.source "SimCardAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/SimCardAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimCardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

.field public static final enum USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 55
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 60
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 65
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "SIM"

    invoke-direct {v0, v1, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 70
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "USIM"

    invoke-direct {v0, v1, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 75
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "RUIM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 80
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    const-string v1, "CSIM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    sget-object v1, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->$VALUES:[Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    return-object v0
.end method

.method public static values()[Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->$VALUES:[Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-virtual {v0}, [Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    return-object v0
.end method
