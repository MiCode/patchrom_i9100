.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field final mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

.field final mLocalProvider:Landroid/content/ContentProvider;

.field final mNames:[Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V
    .locals 0
    .parameter
    .parameter "names"
    .parameter "provider"
    .parameter "localProvider"
    .parameter "holder"

    .prologue
    .line 313
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .line 315
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 316
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 317
    iput-object p5, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 318
    return-void
.end method
