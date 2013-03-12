.class public final enum Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
.super Ljava/lang/Enum;
.source "ServiceGsmAuthenticationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum OK:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

.field public static final enum USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 35
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "PERM_DENIED"

    invoke-direct {v0, v1, v4}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 39
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "INTERNAL_ERR"

    invoke-direct {v0, v1, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 44
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "NULL_POINTER_EX"

    invoke-direct {v0, v1, v6}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 45
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "ILLEGAL_ARG_EX"

    invoke-direct {v0, v1, v7}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 46
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "SIM_NOT_READY_EX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 47
    new-instance v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v1, "USER_AUTH_REJECT_EX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    sget-object v1, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->OK:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->$VALUES:[Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    return-object v0
.end method

.method public static values()[Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->$VALUES:[Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-virtual {v0}, [Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    return-object v0
.end method
