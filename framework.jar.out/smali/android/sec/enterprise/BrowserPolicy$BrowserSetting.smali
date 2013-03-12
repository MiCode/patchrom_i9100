.class public Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSetting"
.end annotation


# static fields
.field public static final BROWSER_AUTOFILL_SETTING:I = 0x4

.field public static final BROWSER_COOKIES_SETTING:I = 0x2

.field public static final BROWSER_FORCEFRAUDWARNING_SETTING:I = 0x8

.field public static final BROWSER_JAVASCRIPT_SETTING:I = 0x10

.field public static final BROWSER_POPUP_SETTING:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/BrowserPolicy;


# direct methods
.method public constructor <init>(Landroid/sec/enterprise/BrowserPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;->this$0:Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
