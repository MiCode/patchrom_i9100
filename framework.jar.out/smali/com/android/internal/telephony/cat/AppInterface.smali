.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_CMD_ACTIVATE:Ljava/lang/String; = "android.intent.action.stk.activate"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final START_MAIN_ACTIVITY:Ljava/lang/String; = "android.intent.action.stk.start_main_activity"


# virtual methods
.method public abstract isAirplaneMode()Z
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
.end method

.method public abstract sendEnvelopeToTriggerBip()V
.end method

.method public abstract sentTerminalResponseForSetupMenu(Z)V
.end method

.method public abstract setEventListChannelStatus(Z)V
.end method

.method public abstract setEventListDataAvailable(Z)V
.end method

.method public abstract triggerCmd(Ljava/lang/String;)V
.end method
