.class Lcom/android/OriginalSettings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$17;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$17;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$1500(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$17;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$1500(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 971
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$17;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #calls: Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$3700(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 972
    return-void

    .line 970
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
