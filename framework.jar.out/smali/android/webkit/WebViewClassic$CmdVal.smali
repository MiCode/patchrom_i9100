.class Landroid/webkit/WebViewClassic$CmdVal;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CmdVal"
.end annotation


# instance fields
.field public command:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Landroid/webkit/WebViewClassic$CmdVal;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
