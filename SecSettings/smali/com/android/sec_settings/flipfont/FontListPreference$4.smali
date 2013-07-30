.class Lcom/android/sec_settings/flipfont/FontListPreference$4;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/flipfont/FontListPreference;->loadSelectedFontThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$4;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$4;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    const/4 v2, 0x1

    #setter for: Lcom/android/sec_settings/flipfont/FontListPreference;->mThreadIsAlive:Z
    invoke-static {v1, v2}, Lcom/android/sec_settings/flipfont/FontListPreference;->access$202(Lcom/android/sec_settings/flipfont/FontListPreference;Z)Z

    .line 332
    const-string v1, "FontListPreference"

    const-string v2, ">>>>>>>>>>>>>>>Runnable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$4;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->loadSelectedFont()V

    .line 334
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$4;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    #getter for: Lcom/android/sec_settings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->access$600(Lcom/android/sec_settings/flipfont/FontListPreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    const-string v1, "FontListPreference"

    const-string v2, "EXCEPTION"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$4;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    #getter for: Lcom/android/sec_settings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->access$600(Lcom/android/sec_settings/flipfont/FontListPreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
