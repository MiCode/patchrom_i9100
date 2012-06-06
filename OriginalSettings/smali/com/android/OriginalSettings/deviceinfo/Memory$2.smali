.class Lcom/android/OriginalSettings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 250
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-static {v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method
