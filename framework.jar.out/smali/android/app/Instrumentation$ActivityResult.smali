.class public final Landroid/app/Instrumentation$ActivityResult;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# instance fields
.field private final mResultCode:I

.field private final mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1337
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iput p1, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    .line 1339
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    .line 1340
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-object v0
.end method
