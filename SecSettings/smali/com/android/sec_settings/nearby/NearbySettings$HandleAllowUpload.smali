.class Lcom/android/sec_settings/nearby/NearbySettings$HandleAllowUpload;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleAllowUpload"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/nearby/NearbySettings;


# direct methods
.method public constructor <init>(Lcom/android/sec_settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/sec_settings/nearby/NearbySettings$HandleAllowUpload;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1710
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 1714
    iget-object v2, p0, Lcom/android/sec_settings/nearby/NearbySettings$HandleAllowUpload;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/sec_settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/sec_settings/nearby/NearbySettings;->access$000(Lcom/android/sec_settings/nearby/NearbySettings;)Lcom/android/sec_settings/nearby/IMediaServer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1724
    :cond_0
    :goto_0
    return v1

    .line 1718
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/sec_settings/nearby/NearbySettings$HandleAllowUpload;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/sec_settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/sec_settings/nearby/NearbySettings;->access$000(Lcom/android/sec_settings/nearby/NearbySettings;)Lcom/android/sec_settings/nearby/IMediaServer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/sec_settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    const/4 v1, 0x1

    goto :goto_0

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
