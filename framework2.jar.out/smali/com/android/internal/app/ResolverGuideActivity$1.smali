.class Lcom/android/internal/app/ResolverGuideActivity$1;
.super Ljava/lang/Object;
.source "ResolverGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    #calls: Lcom/android/internal/app/ResolverGuideActivity;->makeMyIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/app/ResolverGuideActivity;->access$000(Lcom/android/internal/app/ResolverGuideActivity;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverGuideActivity$1;->this$0:Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverGuideActivity;->dismiss()V

    .line 69
    return-void
.end method
