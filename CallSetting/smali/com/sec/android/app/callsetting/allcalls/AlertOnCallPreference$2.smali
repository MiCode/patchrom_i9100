.class Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$2;
.super Ljava/lang/Object;
.source "AlertOnCallPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TextToSpeechSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
