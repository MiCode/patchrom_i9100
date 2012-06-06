.class Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 155
    .local v12, bundle:Landroid/os/Bundle;
    const-string v0, "total_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 156
    .local v1, totalSize:J
    const-string v0, "avail_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 157
    .local v3, availSize:J
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    goto :goto_0

    .line 161
    .end local v1           #totalSize:J
    .end local v3           #availSize:J
    .end local v12           #bundle:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 162
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v0, "total_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 163
    .restart local v1       #totalSize:J
    const-string v0, "avail_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 164
    .restart local v3       #availSize:J
    const-string v0, "apps_used"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 165
    .local v5, appsUsed:J
    const-string v0, "downloads_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 166
    .local v7, downloadsSize:J
    const-string v0, "misc_size"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 167
    .local v9, miscSize:J
    const-string v0, "media_sizes"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v11

    .line 168
    .local v11, mediaSizes:[J
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual/range {v0 .. v11}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updateExact(JJJJJ[J)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
