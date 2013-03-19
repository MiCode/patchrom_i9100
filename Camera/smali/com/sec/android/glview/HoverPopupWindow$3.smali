.class Lcom/sec/android/glview/HoverPopupWindow$3;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/HoverPopupWindow;->postDismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/HoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow$3;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$3;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 1234
    return-void
.end method
