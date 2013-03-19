.class Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;
.super Ljava/lang/Object;
.source "TwGLEditableShortcutMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->initBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDefaultLayoutPopup()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
