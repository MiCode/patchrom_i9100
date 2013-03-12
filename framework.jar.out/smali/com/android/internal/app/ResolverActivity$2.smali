.class Lcom/android/internal/app/ResolverActivity$2;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->dismiss()V

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
