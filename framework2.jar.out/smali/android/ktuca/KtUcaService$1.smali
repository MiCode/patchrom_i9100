.class Landroid/ktuca/KtUcaService$1;
.super Ljava/lang/Object;
.source "KtUcaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/ktuca/KtUcaService;


# direct methods
.method constructor <init>(Landroid/ktuca/KtUcaService;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    new-instance v1, Landroid/ktuca/KtUcaServiceJni;

    invoke-direct {v1}, Landroid/ktuca/KtUcaServiceJni;-><init>()V

    #setter for: Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;
    invoke-static {v0, v1}, Landroid/ktuca/KtUcaService;->access$002(Landroid/ktuca/KtUcaService;Landroid/ktuca/KtUcaServiceJni;)Landroid/ktuca/KtUcaServiceJni;

    .line 27
    iget-object v0, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    #getter for: Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;
    invoke-static {v0}, Landroid/ktuca/KtUcaService;->access$000(Landroid/ktuca/KtUcaService;)Landroid/ktuca/KtUcaServiceJni;

    const/16 v0, -0x35

    iget-object v1, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    #getter for: Landroid/ktuca/KtUcaService;->mChannel:[B
    invoke-static {v1}, Landroid/ktuca/KtUcaService;->access$100(Landroid/ktuca/KtUcaService;)[B

    move-result-object v1

    iget-object v2, p0, Landroid/ktuca/KtUcaService$1;->this$0:Landroid/ktuca/KtUcaService;

    #getter for: Landroid/ktuca/KtUcaService;->mChannelLen:[I
    invoke-static {v2}, Landroid/ktuca/KtUcaService;->access$200(Landroid/ktuca/KtUcaService;)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    .line 28
    return-void
.end method
