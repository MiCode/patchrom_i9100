.class Lcom/android/sec_settings/RadioInfo$10;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 850
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$10;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$10;->this$0:Lcom/android/sec_settings/RadioInfo;

    #getter for: Lcom/android/sec_settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$1600(Lcom/android/sec_settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 853
    const/4 v0, 0x1

    return v0
.end method
