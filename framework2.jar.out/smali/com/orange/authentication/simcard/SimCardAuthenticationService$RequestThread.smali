.class Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
.super Ljava/lang/Object;
.source "SimCardAuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/SimCardAuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestThread"
.end annotation


# instance fields
.field public mCallingThread:Ljava/lang/Thread;

.field public mIsResponseValid:Z

.field private mResponse:Ljava/lang/Object;

.field public mSequenceId:I

.field final synthetic this$0:Lcom/orange/authentication/simcard/SimCardAuthenticationService;


# direct methods
.method private constructor <init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->this$0:Lcom/orange/authentication/simcard/SimCardAuthenticationService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;

    return-object p1
.end method
