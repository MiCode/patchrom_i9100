.class final Landroid/app/Instrumentation$ActivityWaiter;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityWaiter"
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter "_intent"

    .prologue
    .line 1660
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1661
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1662
    return-void
.end method
