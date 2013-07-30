.class Lcom/android/sec_settings/PenHelpPopup$1;
.super Ljava/lang/Object;
.source "PenHelpPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/PenHelpPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/PenHelpPopup;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/PenHelpPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/sec_settings/PenHelpPopup$1;->this$0:Lcom/android/sec_settings/PenHelpPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 62
    const-string v0, "PenHelpPopup"

    const-string v1, "OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/sec_settings/PenHelpPopup$1;->this$0:Lcom/android/sec_settings/PenHelpPopup;

    #calls: Lcom/android/sec_settings/PenHelpPopup;->closePopup()V
    invoke-static {v0}, Lcom/android/sec_settings/PenHelpPopup;->access$000(Lcom/android/sec_settings/PenHelpPopup;)V

    .line 64
    return-void
.end method
