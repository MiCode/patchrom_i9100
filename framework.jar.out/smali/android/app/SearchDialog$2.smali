.class Landroid/app/SearchDialog$2;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SearchDialog;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/SearchDialog$2;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->dismiss()V

    .line 182
    return-void
.end method
