.class Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
.super Ljava/lang/Object;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mReqList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mServList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)V
    .locals 1
    .parameter
    .parameter "m"

    .prologue
    .line 3314
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3315
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 3316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;

    .line 3317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;

    .line 3318
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;Landroid/net/wifi/p2p/WifiP2pService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3296
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3296
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$15600(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3296
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3296
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
