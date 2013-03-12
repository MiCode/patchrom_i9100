.class public final enum Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
.super Ljava/lang/Enum;
.source "ServiceSimCardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ServiceSimCardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/orange/authentication/simcard/ServiceSimCardType$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

.field public static final enum INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

.field public static final enum OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

.field public static final enum PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    .line 34
    new-instance v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    const-string v1, "PERM_DENIED"

    invoke-direct {v0, v1, v3}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    .line 38
    new-instance v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    const-string v1, "INTERNAL_ERR"

    invoke-direct {v0, v1, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    sget-object v1, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    aput-object v1, v0, v4

    sput-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->$VALUES:[Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    return-object v0
.end method

.method public static values()[Lcom/orange/authentication/simcard/ServiceSimCardType$Error;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->$VALUES:[Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-virtual {v0}, [Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    return-object v0
.end method
