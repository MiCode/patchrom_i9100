.class Lcom/android/sec_settings/RadioInfo$15;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$15;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 924
    const-string v3, "phone"

    const-string v4, "toggle %s: currently %s"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "persist.radio.imsallowmtsms"

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo$15;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->isSmsOverImsEnabled()Z
    invoke-static {v1}, Lcom/android/sec_settings/RadioInfo;->access$3400(Lcom/android/sec_settings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo$15;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->isSmsOverImsEnabled()Z
    invoke-static {v1}, Lcom/android/sec_settings/RadioInfo;->access$3400(Lcom/android/sec_settings/RadioInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 927
    .local v0, newValue:Z
    :goto_1
    const-string v2, "persist.radio.imsallowmtsms"

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo$15;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateSmsOverImsState()V
    invoke-static {v1}, Lcom/android/sec_settings/RadioInfo;->access$3500(Lcom/android/sec_settings/RadioInfo;)V

    .line 929
    return-void

    .line 924
    .end local v0           #newValue:Z
    :cond_0
    const-string v1, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 926
    goto :goto_1

    .line 927
    .restart local v0       #newValue:Z
    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method
