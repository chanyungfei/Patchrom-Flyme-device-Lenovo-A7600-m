.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 995
    const v1, 0x9020056

    const v2, 0x9020055

    const v3, 0x10400fb

    const v4, 0x10400fc

    const v5, 0x10400fd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1001
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->setMute(Z)V

    .line 1033
    return-void
.end method

.method setMute(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 1016
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMute on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ringtone"

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1021
    return-void

    .line 1019
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 5

    .prologue
    const v4, 0x9020056

    .line 1004
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1005
    .local v0, "ringerMode":I
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringerMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    if-nez v0, :cond_0

    .line 1007
    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    .line 1013
    :goto_0
    return-void

    .line 1008
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1009
    const v1, 0x9020067

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0

    .line 1011
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->mEnabledIconResId:I

    goto :goto_0
.end method
