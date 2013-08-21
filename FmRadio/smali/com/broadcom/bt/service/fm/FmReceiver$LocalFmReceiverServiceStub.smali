.class Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;
.super Ljava/lang/Object;
.source "FmReceiver.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalFmReceiverServiceStub"
.end annotation


# instance fields
.field private mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "svc"

    .prologue
    .line 1698
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 1700
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    return-object v0
.end method

.method public estimateNoiseFloorLevel(I)I
    .locals 1
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1723
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorLevel(I)I

    move-result v0

    return v0
.end method

.method public getIsMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getIsMute()Z

    move-result v0

    return v0
.end method

.method public getMonoStereoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1735
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getMonoStereoMode()I

    move-result v0

    return v0
.end method

.method public getRadioIsOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1729
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getRadioIsOn()Z

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1753
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getStatus()I

    move-result v0

    return v0
.end method

.method public getTunedFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1741
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getTunedFrequency()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1707
    return-void
.end method

.method public muteAudio(Z)I
    .locals 1
    .parameter "mute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteAudio(Z)I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1711
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 1713
    return-void
.end method

.method public seekRdsStation(IIII)I
    .locals 1
    .parameter "scanDirection"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1766
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public seekStation(II)I
    .locals 1
    .parameter "scanDirection"
    .parameter "minSignalStrength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1772
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public seekStationAbort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationAbort()I

    move-result v0

    return v0
.end method

.method public seekStationCombo(IIIIIZII)I
    .locals 9
    .parameter "startFrequency"
    .parameter "endFrequency"
    .parameter "minSignalStrength"
    .parameter "scanDirection"
    .parameter "scanMethod"
    .parameter "multi_channel"
    .parameter "rdsType"
    .parameter "rdsTypeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationCombo(IIIIIZII)I

    move-result v0

    return v0
.end method

.method public setAudioMode(I)I
    .locals 1
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1792
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioMode(I)I

    move-result v0

    return v0
.end method

.method public setAudioPath(I)I
    .locals 1
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1798
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I

    move-result v0

    return v0
.end method

.method public setFMVolume(I)I
    .locals 1
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolume(I)I

    move-result v0

    return v0
.end method

.method public setLiveAudioPolling(ZI)I
    .locals 1
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1810
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setLiveAudioPolling(ZI)I

    move-result v0

    return v0
.end method

.method public setRdsMode(IIII)I
    .locals 1
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsMode(IIII)I

    move-result v0

    return v0
.end method

.method public setSNRThreshold(I)I
    .locals 1
    .parameter "snrThreshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1816
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setSNRThreshold(I)I

    move-result v0

    return v0
.end method

.method public setStepSize(I)I
    .locals 1
    .parameter "stepSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1828
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setStepSize(I)I

    move-result v0

    return v0
.end method

.method public setWorldRegion(II)I
    .locals 1
    .parameter "worldRegion"
    .parameter "deemphasisTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1834
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setWorldRegion(II)I

    move-result v0

    return v0
.end method

.method public tuneRadio(I)I
    .locals 1
    .parameter "freq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1840
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneRadio(I)I

    move-result v0

    return v0
.end method

.method public turnOffRadio()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1846
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I

    move-result v0

    return v0
.end method

.method public turnOnRadio(I)I
    .locals 1
    .parameter "functionalityMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$LocalFmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 1719
    return-void
.end method
