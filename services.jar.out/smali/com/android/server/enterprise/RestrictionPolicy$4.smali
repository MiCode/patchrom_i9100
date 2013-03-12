.class Lcom/android/server/enterprise/RestrictionPolicy$4;
.super Landroid/os/storage/StorageEventListener;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1618
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    const-string v1, "mounted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->mountSdCard()Z
    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionPolicy;->access$500(Lcom/android/server/enterprise/RestrictionPolicy;)Z

    .line 1626
    :cond_0
    const-string v1, "unmounted"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;
    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionPolicy;->access$600(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 1629
    iget-object v1, p0, Lcom/android/server/enterprise/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/RestrictionPolicy;->isSDCardWriteAllowed()Z

    move-result v0

    .line 1630
    .local v0, state:Z
    if-nez v0, :cond_2

    .line 1631
    const-string v1, "RestrictionPolicy"

    const-string v2, "SDCard Remounted with Readonly permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    .end local v0           #state:Z
    :cond_1
    :goto_0
    const-string v1, "RestrictionPolicy"

    const-string v2, "--onStorageStateChanged"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    return-void

    .line 1633
    .restart local v0       #state:Z
    :cond_2
    const-string v1, "RestrictionPolicy"

    const-string v2, "SDCard Remounted with ReadWrite permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
