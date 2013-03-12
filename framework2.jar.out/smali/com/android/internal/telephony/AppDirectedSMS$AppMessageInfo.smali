.class public Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
.super Ljava/lang/Object;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AppDirectedSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppMessageInfo"
.end annotation


# static fields
.field private static final APPDIR_SMS_NO_COMPONENT:I = 0x2

.field private static final APPDIR_SMS_TRUE:I = 0x1


# instance fields
.field private mappDirSmsStatus:I

.field private mappMsgBody:Ljava/lang/String;

.field private mcomponentnameDirectedSms:Landroid/content/ComponentName;

.field ssoSmsStatus:Z

.field final synthetic this$0:Lcom/android/internal/telephony/AppDirectedSMS;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/AppDirectedSMS;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->this$0:Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappDirSmsStatus:I

    .line 34
    iput-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mcomponentnameDirectedSms:Landroid/content/ComponentName;

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappMsgBody:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->ssoSmsStatus:Z

    return-void
.end method


# virtual methods
.method public checkifcomponentpresent()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mcomponentnameDirectedSms:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getappMsgBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappMsgBody:Ljava/lang/String;

    return-object v0
.end method

.method public getappdirsmsstatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 39
    iget v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappDirSmsStatus:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappDirSmsStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getcomponentnameDirectedSms()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mcomponentnameDirectedSms:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getssoSmsStatus()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->ssoSmsStatus:Z

    return v0
.end method

.method public setNoRegisteredComponent()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappDirSmsStatus:I

    .line 62
    return-void
.end method

.method public setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "componentname"
    .parameter "appMsgBody"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mcomponentnameDirectedSms:Landroid/content/ComponentName;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappDirSmsStatus:I

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->mappMsgBody:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setssoSmsStatustrue()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->ssoSmsStatus:Z

    .line 52
    return-void
.end method
