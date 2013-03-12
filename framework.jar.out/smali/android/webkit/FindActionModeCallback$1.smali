.class Landroid/webkit/FindActionModeCallback$1;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/FindActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 61
    const/16 v0, 0x3d

    if-ne p2, v0, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
