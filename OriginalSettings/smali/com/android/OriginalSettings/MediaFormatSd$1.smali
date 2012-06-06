.class Lcom/android/OriginalSettings/MediaFormatSd$1;
.super Ljava/lang/Object;
.source "MediaFormatSd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/MediaFormatSd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/MediaFormatSd;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/MediaFormatSd;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/OriginalSettings/MediaFormatSd$1;->this$0:Lcom/android/OriginalSettings/MediaFormatSd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 56
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/android/OriginalSettings/MediaFormatSd$1;->this$0:Lcom/android/OriginalSettings/MediaFormatSd;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/MediaFormatSd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 64
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/android/OriginalSettings/MediaFormatSd$1;->this$0:Lcom/android/OriginalSettings/MediaFormatSd;

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/MediaFormatSd;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    iget-object v2, p0, Lcom/android/OriginalSettings/MediaFormatSd$1;->this$0:Lcom/android/OriginalSettings/MediaFormatSd;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/MediaFormatSd;->finish()V

    goto :goto_0
.end method
