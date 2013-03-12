.class Landroid/inputmethodservice/ExtractEditLayout$1;
.super Ljava/lang/Object;
.source "ExtractEditLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/ExtractEditLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "clicked"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v2}, Landroid/inputmethodservice/ExtractEditLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v3, v3, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    iget-object v3, v3, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v1, v0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 93
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$1;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    .line 96
    :cond_0
    return-void
.end method
