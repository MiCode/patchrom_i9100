.class Lcom/android/OriginalSettings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 153
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received storage state changed notification that "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changed state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v2

    aget-object v1, v2, v0

    .line 157
    .local v1, svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 162
    .end local v1           #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void

    .line 155
    .restart local v1       #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
