.class Lcom/android/server/enterprise/WifiPolicy$2;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/WifiPolicy;

.field final synthetic val$adminUid:I

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/WifiPolicy$2;->val$config:Landroid/net/wifi/WifiConfiguration;

    iput p3, p0, Lcom/android/server/enterprise/WifiPolicy$2;->val$adminUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/WifiPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy$2;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget v2, p0, Lcom/android/server/enterprise/WifiPolicy$2;->val$adminUid:I

    #calls: Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->access$000(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2333
    return-void
.end method
