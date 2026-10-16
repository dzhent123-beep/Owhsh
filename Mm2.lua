local ok,err=xpcall(function()
local TS=game:GetService("TweenService")local UIS=game:GetService("UserInputService")local Players=game:GetService("Players")local RS=game:GetService("RunService")local L=game:GetService("Lighting")local HS=game:GetService("HttpService")local VU=game:GetService("VirtualUser")local LP=Players.LocalPlayer
if not LP then repeat task.wait(.1)until Players.LocalPlayer;LP=Players.LocalPlayer end
local FLD="luxxs"local TG="https://t.me/NurHuboffical"local FS=type(writefile)=="function"and type(readfile)=="function"and type(isfile)=="function"
local A={Lime=Color3.fromRGB(196,255,61),Coral=Color3.fromRGB(255,104,84),Ice=Color3.fromRGB(110,214,255),Violet=Color3.fromRGB(158,110,255),Gold=Color3.fromRGB(255,196,70),Rose=Color3.fromRGB(255,96,160)}
local AN={"Lime","Coral","Ice","Violet","Gold","Rose"}local ACM="Lime"local ACC=A[ACM]
local C={bg=Color3.fromRGB(11,11,14),panel=Color3.fromRGB(16,16,20),row=Color3.fromRGB(24,24,30),line=Color3.fromRGB(40,40,48),off=Color3.fromRGB(58,58,68),text=Color3.fromRGB(232,232,226),dim=Color3.fromRGB(122,122,136)}
local WH=Color3.fromRGB(255,255,255)local RD=Color3.fromRGB(255,64,64)local BG=Color3.fromRGB(196,196,206)
local FH=Enum.Font.Michroma local FB=Enum.Font.SourceSansSemibold local FM=Enum.Font.RobotoMono local FS2=Enum.Font.Oswald
local TH={}local function T(o,p,f)TH[#TH+1]={o,p,f};o[p]=f and f(ACC)or ACC end
local HSV={h=120/360,s=.85,v=1}local function cc()return Color3.fromHSV(HSV.h,HSV.s,HSV.v)end
local function hSeq()local k={}for i=0,6 do k[#k+1]=ColorSequenceKeypoint.new(i/6,Color3.fromHSV(i/6,1,1))end return ColorSequence.new(k)end
local function sSeq()return ColorSequence.new(Color3.fromHSV(HSV.h,0,HSV.v),Color3.fromHSV(HSV.h,1,HSV.v))end
local function vSeq()return ColorSequence.new(Color3.new(0,0,0),Color3.fromHSV(HSV.h,HSV.s,1))end
local PA={Lime=A.Lime,Coral=A.Coral,Ice=A.Ice,Violet=A.Violet,Gold=A.Gold,Red=Color3.fromRGB(255,60,60),Green=Color3.fromRGB(70,230,110),Blue=Color3.fromRGB(70,110,255),Pink=Color3.fromRGB(255,110,200),White=WH}
local CN={"Rainbow","Custom","Lime","Coral","Ice","Violet","Gold","Red","Green","Blue","Pink","White"}
local WC={"Custom","White","Gold","Rainbow","Ice","Violet","Pink","Coral"}
local RC={Murderer=Color3.fromRGB(255,60,60),Sheriff=Color3.fromRGB(70,130,255),Innocent=Color3.fromRGB(70,230,110)}
local HC={"Custom","Rainbow","Lime","Coral","Ice","Violet","Gold","Red","Green","Blue","Pink","White"}
local QP={"Left","Right","Bottom","Top","Left-Top","Left-Bottom","Right-Top","Right-Bottom"}
local SR={"Default","16:9","16:10","4:3","21:9","1:1"}
local SP={"Default","16:9","16:10","4:3","21:9","1:1","Custom"}
local function gc(n,t,o)if n=="Rainbow"then return Color3.fromHSV((((t or 0)*.2)+(o or 0))%1,.85,1)end if n=="Custom"then return cc()end return PA[n]or ACC end
local CN2={}local function tr(c)CN2[#CN2+1]=c;return c end
local function tw(o,t,p,s,d)local x=TS:Create(o,TweenInfo.new(t,s or Enum.EasingStyle.Quint,d or Enum.EasingDirection.Out),p);x:Play();return x end
local function cr(o,r)local c=Instance.new("UICorner");c.CornerRadius=UDim.new(0,r);c.Parent=o;return c end
local function st(o,col,th,tr2)local s=Instance.new("UIStroke");s.Color=col;s.Thickness=th or 1;s.Transparency=tr2 or 0;s.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;s.Parent=o;return s end
local function gr(f,r,seq,tseq)local g=Instance.new("UIGradient");g.Rotation=r or 0;if seq then g.Color=seq end;if tseq then g.Transparency=tseq end;g.Parent=f;return g end
local GR={}local Fl,Se,De={},{},{}
local function rg(k,d,s)Fl[k]=d;De[k]=d;Se[k]=s end
local function pg()if gethui then local o,h=pcall(gethui);if o and h then return h end end local o,cg=pcall(function()return game:GetService("CoreGui")end)if o and cg then local o2=pcall(function()return cg:GetChildren()end);if o2 then return cg end end return LP:WaitForChild("PlayerGui",10)or LP:FindFirstChildOfClass("PlayerGui")end
local gui=Instance.new("ScreenGui")gui.Name="luxxs"gui.ResetOnSpawn=false gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling gui.IgnoreGuiInset=true
local par=pg()pcall(function()if par:FindFirstChild("luxxs")then par.luxxs:Destroy()end end)pcall(function()if par:FindFirstChild("luxxsKey")then par.luxxsKey:Destroy()end end)pcall(function()if par:FindFirstChild("luxxsFPS")then par.luxxsFPS:Destroy()end end)gui.Parent=par
if not gui.Parent then gui.Parent=LP:WaitForChild("PlayerGui")end
for _,e in ipairs(L:GetChildren())do pcall(function()if e:IsA("BlurEffect")or e:IsA("DepthOfFieldEffect")then e.Enabled=false end if e.Name:sub(1,6)=="luxxs_"then e:Destroy()end end)end
local function nt(text)local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(1,1)f.Size=UDim2.new(0,250,0,34)f.Position=UDim2.new(1,280,1,-20)f.BackgroundColor3=C.panel f.BorderSizePixel=0 f.ZIndex=20 f.Parent=gui st(f,C.line,1,0)
local b=Instance.new("Frame")b.Size=UDim2.new(0,3,1,0)b.BorderSizePixel=0 b.BackgroundColor3=ACC b.ZIndex=21 b.Parent=f
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Size=UDim2.new(1,-20,1,0)l.Position=UDim2.new(0,14,0,0)l.Font=FM l.TextSize=12 l.TextColor3=C.text l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.ZIndex=21 l.Parent=f
tw(f,.4,{Position=UDim2.new(1,-20,1,-20)})task.delay(2.6,function()tw(f,.3,{Position=UDim2.new(1,280,1,-20)},Enum.EasingStyle.Quint,Enum.EasingDirection.In)task.delay(.35,function()pcall(function()f:Destroy()end)end)end)end
local function md(h,tg,oc)local dr,sP,sI,mv=false,nil,nil,false
tr(h.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=true mv=false sI=i.Position sP=tg.Position
local c2 c2=i.Changed:Connect(function()if i.UserInputState==Enum.UserInputState.End then dr=false c2:Disconnect()if not mv and oc then oc()end end end)end end))
tr(UIS.InputChanged:Connect(function(i)if dr and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then local d=i.Position-sI if d.Magnitude>5 then mv=true end if mv then tw(tg,.08,{Position=UDim2.new(sP.X.Scale,sP.X.Offset+d.X,sP.Y.Scale,sP.Y.Offset+d.Y)},Enum.EasingStyle.Linear)end end end))end
local Cos={}
local function dc(n)if Cos[n]then for _,o in ipairs(Cos[n].objs)do pcall(function()o:Destroy()end)end Cos[n]=nil end end
local function np(sz,p)local pt=Instance.new("Part")pt.Size=sz pt.CanCollide=false pt.CanQuery=false pt.CanTouch=false pt.Massless=true pt.Anchored=false pt.Parent=p return pt end
local function bW()dc("wings")local ch=LP.Character local to=ch and(ch:FindFirstChild("UpperTorso")or ch:FindFirstChild("Torso"))if not to then return end
local mo=Instance.new("Model")mo.Name="luxxsWings"local fe={}
for _,sd in ipairs({-1,1})do for i=1,6 do local ln=4.2-i*.35 local p=np(Vector3.new(ln,.5,.08),mo)p.Material=Enum.Material.Neon local w=Instance.new("Weld")w.Part0=to w.Part1=p w.Parent=p fe[#fe+1]={part=p,weld=w,side=sd,i=i,len=ln}end end
mo.Parent=ch Cos.wings={objs={mo},model=mo,feathers=fe}end
local function bH()dc("hat")local ch=LP.Character local hd=ch and ch:FindFirstChild("Head")if not hd then return end
local mo=Instance.new("Model")mo.Name="luxxsHat"local sl={}
for i=1,30 do local k=(i-1)/30 local r=2.4*(1-k)^1.05+.05 local p=np(Vector3.new(.07,r*2,r*2),mo)p.Shape=Enum.PartType.Cylinder p.Material=Enum.Material.SmoothPlastic p.CastShadow=false
local w=Instance.new("Weld")w.Part0=hd w.Part1=p w.C0=CFrame.new(0,.52+(i-1)*.036,0)*CFrame.Angles(0,0,math.pi/2)w.Parent=p sl[i]=p end
mo.Parent=ch Cos.hat={objs={mo},model=mo,slices=sl}end
local function bT()dc("trail")local ch=LP.Character local hr=ch and ch:FindFirstChild("HumanoidRootPart")if not hr then return end
local a0=Instance.new("Attachment")a0.Name="luxxsA0"a0.Parent=hr local a1=Instance.new("Attachment")a1.Name="luxxsA1"a1.Parent=hr
local t=Instance.new("Trail")t.Attachment0=a0 t.Attachment1=a1 t.LightEmission=1 t.FaceCamera=true t.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,.1),NumberSequenceKeypoint.new(1,1)})t.Parent=hr
Cos.trail={objs={a0,a1,t},a0=a0,a1=a1,trail=t}end
local function cs(n,t)if n=="Rainbow"then local k={}for i=0,6 do k[#k+1]=ColorSequenceKeypoint.new(i/6,gc(n,t,-i/6*.8))end return ColorSequence.new(k)end return ColorSequence.new(gc(n))end
tr(RS.Heartbeat:Connect(function()local t=os.clock()local w=Cos.wings
if w and w.model.Parent then local fl=math.sin(t*(Fl["Visuals/Wing Speed"]or 3))*.2
for _,f in ipairs(w.feathers)do local a=math.rad(10+f.i*12)+fl*(.5+f.i*.12)local th=(f.side==1)and a or(math.pi-a)f.weld.C0=CFrame.new(f.side*.5,.45,.6)*CFrame.Angles(0,f.side*-.35,0)*CFrame.Angles(0,0,th)*CFrame.new(f.len/2,0,0)f.part.Color=gc(Fl["Visuals/Wing Color"],t,f.i*.05)end end
local h=Cos.hat if h and h.model.Parent then local ht=(Fl["Visuals/Hat Transparency"]or 35)/100 for i,s in ipairs(h.slices)do s.Color=gc(Fl["Visuals/Hat Color"],t,i*.02)s.Transparency=ht end end
local t2=Cos.trail if t2 and t2.trail.Parent then local wd=(Fl["Visuals/Trail Width"]or 4)*.4 t2.a0.Position=Vector3.new(0,wd/2,0)t2.a1.Position=Vector3.new(0,-wd/2,0)t2.trail.Lifetime=math.max(.1,(Fl["Visuals/Trail Length"]or 10)/10)t2.trail.Color=cs(Fl["Visuals/Trail Color"],t)end end))
local SCR={Bars={}}
do local bf=Instance.new("Frame")bf.Name="luxxsScreenBars"bf.Size=UDim2.new(1,0,1,0)bf.BackgroundTransparency=1 bf.ZIndex=0 bf.Parent=gui
local tb=Instance.new("Frame")tb.Position=UDim2.new(0,0,0,0)tb.Size=UDim2.new(1,0,0,0)tb.BackgroundColor3=Color3.new(0,0,0)tb.BorderSizePixel=0 tb.ZIndex=0 tb.Parent=bf
local bb=Instance.new("Frame")bb.AnchorPoint=Vector2.new(0,1)bb.Position=UDim2.new(0,0,1,0)bb.Size=UDim2.new(1,0,0,0)bb.BackgroundColor3=Color3.new(0,0,0)bb.BorderSizePixel=0 bb.ZIndex=0 bb.Parent=bf
SCR.Bars={top=tb,bot=bb,folder=bf}local R={["16:9"]=16/9,["16:10"]=16/10,["4:3"]=4/3,["21:9"]=21/9,["1:1"]=1}
function SCR.apply(m,an)local cam=workspace.CurrentCamera if not cam then return end local vp=cam.ViewportSize local ti=an and .35 or .001
if m=="Default"then tw(SCR.Bars.top,ti,{Size=UDim2.new(1,0,0,0)})tw(SCR.Bars.bot,ti,{Size=UDim2.new(1,0,0,0)})return end
local tR=R[m]if not tR then return end local cR=vp.X/vp.Y local bh=0 if cR>tR then local tH=vp.X/tR bh=(vp.Y-tH)/2 end if bh<0 then bh=0 end
tw(SCR.Bars.top,ti,{Size=UDim2.new(1,0,0,bh)})tw(SCR.Bars.bot,ti,{Size=UDim2.new(1,0,0,bh)})end end
local Str={Preset="Default",H=100,V=100,FOV=70,SavedFOV=nil}
do local cam=workspace.CurrentCamera Str.SavedFOV=cam and cam.FieldOfView or 70
function Str.apply()local cam=workspace.CurrentCamera if not cam then return end local h=math.clamp((tonumber(Str.H)or 100)/100,.5,2.5)local v=math.clamp((tonumber(Str.V)or 100)/100,.5,2.5)local b=tonumber(Str.FOV)or 70 local t=math.clamp(b*v,1,179)cam.FieldOfView=math.clamp(t/h,1,179)end
function Str.setPreset(n)Str.Preset=n
if n=="Default"then Str.H=100 Str.V=100 local cam=workspace.CurrentCamera if cam then cam.FieldOfView=Str.SavedFOV or 70 end if Se["Stretch/Horizontal"]then Se["Stretch/Horizontal"](100)end if Se["Stretch/Vertical"]then Se["Stretch/Vertical"](100)end return end
if n=="Custom"then return end local m={["16:9"]={112,100},["16:10"]={106,100},["4:3"]={124,100},["21:9"]={94,100},["1:1"]={134,100}}local mm=m[n]or{100,100}Str.H=mm[1]Str.V=mm[2]
if Se["Stretch/Horizontal"]then Se["Stretch/Horizontal"](mm[1])end if Se["Stretch/Vertical"]then Se["Stretch/Vertical"](mm[2])end Str.apply()end end
local W,H=972,460
local main=Instance.new("CanvasGroup")main.AnchorPoint=Vector2.new(.5,.5)main.Position=UDim2.new(.5,0,.5,0)main.Size=UDim2.new(0,W,0,H)main.BackgroundColor3=Color3.fromRGB(12,11,17)main.BorderSizePixel=0 main.GroupTransparency=1 main.Visible=false main.Parent=gui cr(main,16)T(st(main,ACC,1.5,.35),"Color")
do local bf=Instance.new("Frame")bf.Size=UDim2.new(1,0,1,0)bf.BackgroundColor3=WH bf.BorderSizePixel=0 bf.ZIndex=0 bf.Parent=main gr(bf,125,ColorSequence.new(Color3.fromRGB(24,19,36),Color3.fromRGB(10,10,14)))end
local sc=Instance.new("UIScale")sc.Scale=.9 sc.Parent=main
local tp=Instance.new("Frame")tp.Size=UDim2.new(1,0,0,44)tp.BackgroundColor3=WH tp.BorderSizePixel=0 tp.Parent=main gr(tp,0,ColorSequence.new(Color3.fromRGB(34,26,48),Color3.fromRGB(15,15,21)))
do local tl=Instance.new("Frame")tl.Position=UDim2.new(0,0,1,-1)tl.Size=UDim2.new(1,0,0,1)tl.BackgroundColor3=C.line tl.BorderSizePixel=0 tl.Parent=tp
local mk=Instance.new("Frame")mk.Position=UDim2.new(0,16,0,18)mk.Size=UDim2.new(0,8,0,8)mk.Rotation=45 mk.BorderSizePixel=0 mk.Parent=tp T(mk,"BackgroundColor3")
local ti=Instance.new("TextLabel")ti.BackgroundTransparency=1 ti.Position=UDim2.new(0,34,0,0)ti.Size=UDim2.new(0,90,1,0)ti.Font=FH ti.TextSize=15 ti.TextXAlignment=Enum.TextXAlignment.Left ti.TextColor3=C.text ti.Text="LUXXS"ti.Parent=tp
local su=Instance.new("TextLabel")su.BackgroundTransparency=1 su.Position=UDim2.new(0,130,0,2)su.Size=UDim2.new(0,120,1,0)su.Font=FM su.TextSize=11 su.TextXAlignment=Enum.TextXAlignment.Left su.TextColor3=C.dim su.Text="by DrHub"su.Parent=tp
local vr=Instance.new("TextLabel")vr.BackgroundTransparency=1 vr.AnchorPoint=Vector2.new(1,0)vr.Position=UDim2.new(1,-52,0,0)vr.Size=UDim2.new(0,160,1,0)vr.Font=FM vr.TextSize=11 vr.TextXAlignment=Enum.TextXAlignment.Right vr.TextColor3=C.dim vr.Text="v6.3 // MM2"vr.Parent=tp end
local cb=Instance.new("TextButton")cb.AnchorPoint=Vector2.new(1,.5)cb.Position=UDim2.new(1,-10,.5,0)cb.Size=UDim2.new(0,28,0,28)cb.BackgroundColor3=C.row cb.BorderSizePixel=0 cb.Text="X"cb.Font=FM cb.TextSize=13 cb.TextColor3=C.dim cb.AutoButtonColor=false cb.Parent=tp
local sd=Instance.new("Frame")sd.Position=UDim2.new(0,0,0,44)sd.Size=UDim2.new(0,150,0,H-44-24)sd.BackgroundColor3=C.panel sd.BorderSizePixel=0 sd.Parent=main
do local sl=Instance.new("Frame")sl.Position=UDim2.new(1,-1,0,0)sl.Size=UDim2.new(0,1,1,0)sl.BackgroundColor3=C.line sl.BorderSizePixel=0 sl.Parent=sd end
local sL=Instance.new("Frame")sL.BackgroundTransparency=1 sL.Position=UDim2.new(0,0,0,12)sL.Size=UDim2.new(1,-1,1,-12)sL.Parent=sd
local ind=Instance.new("Frame")ind.Size=UDim2.new(0,2,0,22)ind.Position=UDim2.new(0,0,0,18)ind.BorderSizePixel=0 ind.ZIndex=3 ind.Parent=sd T(ind,"BackgroundColor3")
local ft=Instance.new("Frame")ft.Position=UDim2.new(0,0,1,-24)ft.Size=UDim2.new(1,0,0,24)ft.BackgroundColor3=C.panel ft.BorderSizePixel=0 ft.Parent=main
do local fl=Instance.new("TextLabel")fl.BackgroundTransparency=1 fl.Position=UDim2.new(0,14,0,0)fl.Size=UDim2.new(.6,0,1,0)fl.Font=FM fl.TextSize=10 fl.TextXAlignment=Enum.TextXAlignment.Left fl.TextColor3=C.dim fl.Text="ESC or RIGHTSHIFT = TOGGLE   |   t.me/NurHuboffical"fl.Parent=ft end
local fR=Instance.new("TextLabel")fR.BackgroundTransparency=1 fR.AnchorPoint=Vector2.new(1,0)fR.Position=UDim2.new(1,-14,0,0)fR.Size=UDim2.new(.4,0,1,0)fR.Font=FM fR.TextSize=10 fR.TextXAlignment=Enum.TextXAlignment.Right fR.TextColor3=C.dim fR.Text="ROLE  INNOCENT"fR.Parent=ft
local pgs=Instance.new("Frame")pgs.BackgroundTransparency=1 pgs.Position=UDim2.new(0,162,0,54)pgs.Size=UDim2.new(0,542,0,H-24-54-10)pgs.ClipsDescendants=true pgs.Parent=main
local pv=Instance.new("Frame")pv.Position=UDim2.new(0,712,0,54)pv.Size=UDim2.new(0,252,0,372)pv.BorderSizePixel=0 pv.Parent=main
local Tabs={}local curTab=nil local swi=false
local function rTab()for _,t in ipairs(Tabs)do local on=(t==curTab)t.nm.TextColor3=on and C.text or C.dim t.num.TextColor3=on and ACC or C.dim t.button.BackgroundColor3=on and ACC or C.row t.button.BackgroundTransparency=on and .82 or 1 end end
local function selT(t)if curTab==t or swi then return end swi=true local od=curTab curTab=t tw(ind,.3,{Position=UDim2.new(0,0,0,18+t.visualY)})rTab()
if od then tw(od.page,.15,{GroupTransparency=1})task.delay(.15,function()od.page.Visible=false end)end
task.delay(od and .12 or 0,function()t.page.GroupTransparency=1 t.page.Visible=true tw(t.page,.25,{GroupTransparency=0})task.delay(.25,function()swi=false end)end)end
local function hl(pr,y)local f=Instance.new("Frame")f.Position=UDim2.new(0,0,1,y or -1)f.Size=UDim2.new(1,0,0,1)f.BackgroundColor3=C.line f.BackgroundTransparency=1 f.BorderSizePixel=0 f.Parent=pr return f end
local function rTabL()table.sort(Tabs,function(a,b)return a.visualY<b.visualY end)
for i,t in ipairs(Tabs)do t.visualY=18+(i-1)*36 tw(t.button,.15,{Position=UDim2.new(0,8,0,(i-1)*36+6)})t.num.Text=string.format("%02d",i)end
if curTab then tw(ind,.15,{Position=UDim2.new(0,0,0,curTab.visualY)})end end
local function ct(name)local b=Instance.new("TextButton")b.Size=UDim2.new(1,-16,0,34)b.Position=UDim2.new(0,8,0,(#Tabs)*36+6)b.BackgroundColor3=C.row b.BackgroundTransparency=1 b.BorderSizePixel=0 b.Text=""b.AutoButtonColor=false b.Parent=sL cr(b,8)
local nm=Instance.new("TextLabel")nm.BackgroundTransparency=1 nm.Position=UDim2.new(0,16,0,0)nm.Size=UDim2.new(0,24,1,0)nm.Font=FM nm.TextSize=11 nm.TextXAlignment=Enum.TextXAlignment.Left nm.TextColor3=C.dim nm.Text=string.format("%02d",#Tabs+1)nm.Parent=b
local nl=Instance.new("TextLabel")nl.BackgroundTransparency=1 nl.Position=UDim2.new(0,46,0,0)nl.Size=UDim2.new(1,-50,1,0)nl.Font=FS2 nl.TextSize=16 nl.TextXAlignment=Enum.TextXAlignment.Left nl.TextColor3=C.dim nl.Text=string.upper(name)nl.Parent=b
local pge=Instance.new("CanvasGroup")pge.Size=UDim2.new(1,0,1,0)pge.BackgroundTransparency=1 pge.Visible=false pge.GroupTransparency=1 pge.Parent=pgs
local srl=Instance.new("ScrollingFrame")srl.Size=UDim2.new(1,0,1,0)srl.BackgroundTransparency=1 srl.BorderSizePixel=0 srl.ScrollBarThickness=2 srl.CanvasSize=UDim2.new(0,0,0,0)srl.AutomaticCanvasSize=Enum.AutomaticSize.Y srl.Parent=pge T(srl,"ScrollBarImageColor3")
local function mkc(xs,xo)local f=Instance.new("Frame")f.BackgroundTransparency=1 f.Position=UDim2.new(xs,xo,0,0)f.Size=UDim2.new(.5,-4,0,0)f.AutomaticSize=Enum.AutomaticSize.Y f.Parent=srl local l=Instance.new("UIListLayout")l.Padding=UDim.new(0,2)l.SortOrder=Enum.SortOrder.LayoutOrder l.Parent=f return f end
local cL=mkc(0,0)local cR=mkc(.5,4)local hL,hR=0,0 local CH=H-24-54-10-12
local function slt(h)if hL+h<=CH then hL=hL+h+2 return cL end if hR+h<=CH then hR=hR+h+2 return cR end if hR<hL then hR=hR+h+2 return cR end hL=hL+h+2 return cL end
local pd=Instance.new("UIPadding")pd.PaddingRight=UDim.new(0,8)pd.PaddingTop=UDim.new(0,2)pd.PaddingBottom=UDim.new(0,10)pd.Parent=srl
local t={button=b,page=pge,scroll=srl,name=name,num=nm,nm=nl,visualY=18+(#Tabs)*36,dragging=false}table.insert(Tabs,t)
b.InputBegan:Connect(function(input)if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then t.dragging=false local sY=input.Position.Y local sV=t.visualY local c1,c2
c1=UIS.InputChanged:Connect(function(i)if i.UserInputType~=Enum.UserInputType.MouseMovement and i.UserInputType~=Enum.UserInputType.Touch then return end local dy=i.Position.Y-sY if math.abs(dy)>6 then t.dragging=true end if t.dragging then t.visualY=sV+dy b.Position=UDim2.new(0,8,0,t.visualY-18)end end)
c2=UIS.InputEnded:Connect(function(i)if i.UserInputType~=Enum.UserInputType.MouseButton1 and i.UserInputType~=Enum.UserInputType.Touch then return end c1:Disconnect()c2:Disconnect()if not t.dragging then selT(t)else t.dragging=false rTabL()end end)end end)
b.MouseEnter:Connect(function()if curTab~=t then tw(nl,.15,{TextColor3=C.text})end end)
b.MouseLeave:Connect(function()if curTab~=t then tw(nl,.15,{TextColor3=C.dim})end end)
function t:Label(text)local f=Instance.new("Frame")f.Size=UDim2.new(1,0,0,30)f.BackgroundTransparency=1 f.Parent=slt(30)
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Position=UDim2.new(0,0,0,6)l.Size=UDim2.new(1,0,0,18)l.Font=FS2 l.TextSize=13 l.TextXAlignment=Enum.TextXAlignment.Left l.TextColor3=C.dim l.Text=string.upper(text)l.Parent=f hl(f,-3)
local ac=Instance.new("Frame")ac.Position=UDim2.new(0,0,1,-3)ac.Size=UDim2.new(0,28,0,1)ac.BorderSizePixel=0 ac.Parent=f T(ac,"BackgroundColor3")end
function t:Label2(text,font,size,color)local l=Instance.new("TextLabel")l.Size=UDim2.new(1,0,0,(#text>36)and 28 or 18)l.TextWrapped=true l.BackgroundTransparency=1 l.Font=font or FM l.TextSize=size or 11 l.TextColor3=color or C.dim l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.Parent=slt(l.Size.Y.Offset)return l end
function t:Frame(h)local f=Instance.new("Frame")f.Size=UDim2.new(1,0,0,h)f.BackgroundTransparency=1 f.Parent=slt(h)return f end
function t:Toggle(text,default,callback)local k=name.."/"..text local st2=default or false
local r=Instance.new("TextButton")r.Size=UDim2.new(1,0,0,34)r.BackgroundColor3=C.row r.BackgroundTransparency=.55 cr(r,8)r.BorderSizePixel=0 r.AutoButtonColor=false r.Text=""r.Parent=slt(34)hl(r)
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Position=UDim2.new(0,10,0,0)l.Size=UDim2.new(1,-60,1,0)l.Font=FB l.TextSize=14 l.TextColor3=C.text l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.Parent=r
local bx=Instance.new("Frame")bx.AnchorPoint=Vector2.new(1,.5)bx.Position=UDim2.new(1,-10,.5,0)bx.Size=UDim2.new(0,36,0,18)bx.BackgroundColor3=st2 and ACC or C.off bx.BorderSizePixel=0 bx.Parent=r cr(bx,9)
T(bx,"BackgroundColor3",function(a)return st2 and a or C.off end)
local inn=Instance.new("Frame")inn.AnchorPoint=Vector2.new(0,.5)inn.Position=UDim2.new(0,st2 and 20 or 2,.5,0)inn.Size=UDim2.new(0,14,0,14)inn.BackgroundColor3=WH inn.BorderSizePixel=0 inn.Parent=bx cr(inn,7)
local function pn()tw(bx,.18,{BackgroundColor3=st2 and ACC or C.off})tw(inn,.18,{Position=UDim2.new(0,st2 and 20 or 2,.5,0)})end
rg(k,st2,function(v)st2=v and true or false Fl[k]=st2 pn()if callback then task.spawn(callback,st2)end end)
r.MouseButton1Click:Connect(function()Se[k](not st2)end)
r.MouseEnter:Connect(function()tw(r,.12,{BackgroundTransparency=.3})end)
r.MouseLeave:Connect(function()tw(r,.12,{BackgroundTransparency=.55})end)end
function t:Button(text,callback)local wp=Instance.new("Frame")wp.Size=UDim2.new(1,0,0,38)wp.BackgroundTransparency=1 wp.Parent=slt(38)
local b=Instance.new("TextButton")b.Position=UDim2.new(0,10,0,4)b.Size=UDim2.new(1,-20,0,30)b.BackgroundColor3=ACC b.BackgroundTransparency=.88 cr(b,8)b.BorderSizePixel=0 b.AutoButtonColor=false b.Font=FM b.TextSize=12 b.Text=string.upper(text)b.Parent=wp
T(b,"TextColor3")local bs=st(b,ACC,1,.4)T(bs,"Color")
b.MouseEnter:Connect(function()b.BackgroundColor3=ACC tw(b,.12,{BackgroundTransparency=0})b.TextColor3=C.bg end)
b.MouseLeave:Connect(function()tw(b,.12,{BackgroundTransparency=.88})b.TextColor3=ACC end)
b.MouseButton1Click:Connect(function()if callback then task.spawn(callback)end end)end
function t:Input(text,default,callback)local r=Instance.new("Frame")r.Size=UDim2.new(1,0,0,38)r.BackgroundColor3=C.row r.BackgroundTransparency=.55 cr(r,8)r.Parent=slt(38)hl(r)
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Position=UDim2.new(0,10,0,0)l.Size=UDim2.new(.5,-10,1,0)l.Font=FB l.TextSize=14 l.TextColor3=C.text l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.Parent=r
local bx=Instance.new("Frame")bx.AnchorPoint=Vector2.new(1,.5)bx.Position=UDim2.new(1,-10,.5,0)bx.Size=UDim2.new(.5,-10,0,26)bx.BackgroundColor3=C.bg bx.BorderSizePixel=0 bx.Parent=r
local bs=st(bx,ACC,1,.4)T(bs,"Color")
local tb=Instance.new("TextBox")tb.BackgroundTransparency=1 tb.Size=UDim2.new(1,-12,1,0)tb.Position=UDim2.new(0,6,0,0)tb.Font=FM tb.TextSize=13 tb.TextColor3=C.text tb.PlaceholderColor3=C.dim tb.PlaceholderText="value"tb.Text=tostring(default or"")tb.ClearTextOnFocus=false tb.TextXAlignment=Enum.TextXAlignment.Center tb.Parent=bx
tb.FocusLost:Connect(function()if callback then task.spawn(callback,tb.Text,tb)end end)return tb end
function t:Slider(text,min,max,default,callback,gradFn)local k=name.."/"..text local v=default or min
local r=Instance.new("Frame")r.Size=UDim2.new(1,0,0,46)r.BackgroundColor3=C.row r.BackgroundTransparency=.55 cr(r,8)r.Parent=slt(46)hl(r)
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Position=UDim2.new(0,10,0,4)l.Size=UDim2.new(.6,0,0,20)l.Font=FB l.TextSize=14 l.TextColor3=C.text l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.Parent=r
local vl=Instance.new("TextLabel")vl.BackgroundTransparency=1 vl.AnchorPoint=Vector2.new(1,0)vl.Position=UDim2.new(1,-10,0,4)vl.Size=UDim2.new(0,100,0,20)vl.Font=FM vl.TextSize=13 vl.TextXAlignment=Enum.TextXAlignment.Right vl.Text=tostring(v)vl.Parent=r T(vl,"TextColor3")
local br=Instance.new("Frame")br.Position=UDim2.new(0,10,0,33)br.Size=UDim2.new(1,-20,0,5)br.BackgroundColor3=C.off br.BorderSizePixel=0 br.Parent=r
local fi=Instance.new("Frame")fi.Size=UDim2.new((v-min)/(max-min),0,1,0)fi.BorderSizePixel=0 fi.Parent=br T(fi,"BackgroundColor3")
local gO if gradFn then br.Size=UDim2.new(1,-20,0,8)br.Position=UDim2.new(0,10,0,31)br.BackgroundColor3=WH fi.BackgroundTransparency=1 gO=Instance.new("UIGradient")gO.Color=gradFn()gO.Parent=br GR[k]=function()gO.Color=gradFn()end end
local kn=Instance.new("Frame")kn.AnchorPoint=Vector2.new(.5,.5)kn.Position=UDim2.new((v-min)/(max-min),0,.5,0)kn.Size=UDim2.new(0,14,0,14)kn.BackgroundColor3=WH kn.BorderSizePixel=0 kn.ZIndex=3 kn.Parent=br cr(br,3)cr(fi,3)cr(kn,7)T(st(kn,ACC,2,0),"Color")
rg(k,v,function(vv)vv=math.clamp(math.floor((tonumber(vv)or min)+.5),min,max)v=vv Fl[k]=vv vl.Text=tostring(vv)local rr=(vv-min)/(max-min)fi.Size=UDim2.new(rr,0,1,0)kn.Position=UDim2.new(rr,0,.5,0)if callback then task.spawn(callback,vv)end end)
local hit=Instance.new("TextButton")hit.BackgroundTransparency=1 hit.Text=""hit.Position=UDim2.new(0,0,0,22)hit.Size=UDim2.new(1,0,0,24)hit.Parent=r
local sl=false local function upd(x)local rl=math.clamp((x-br.AbsolutePosition.X)/math.max(br.AbsoluteSize.X,1),0,1)Se[k](min+(max-min)*rl)end
hit.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then sl=true srl.ScrollingEnabled=false upd(i.Position.X)end end)
tr(UIS.InputEnded:Connect(function(i)if sl and(i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch)then sl=false srl.ScrollingEnabled=true end end))
tr(UIS.InputChanged:Connect(function(i)if sl and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then upd(i.Position.X)end end))end
function t:Choice(text,options,default,callback)local k=name.."/"..text local ix=table.find(options,default)or 1
local r=Instance.new("TextButton")r.Size=UDim2.new(1,0,0,34)r.BackgroundColor3=C.row r.BackgroundTransparency=.55 cr(r,8)r.BorderSizePixel=0 r.AutoButtonColor=false r.Text=""r.Parent=slt(34)hl(r)
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Position=UDim2.new(0,10,0,0)l.Size=UDim2.new(.5,-10,1,0)l.Font=FB l.TextSize=14 l.TextColor3=C.text l.TextXAlignment=Enum.TextXAlignment.Left l.Text=text l.Parent=r
local vl=Instance.new("TextLabel")vl.BackgroundTransparency=1 vl.AnchorPoint=Vector2.new(1,0)vl.Position=UDim2.new(1,-10,0,0)vl.Size=UDim2.new(.5,-10,1,0)vl.Font=FM vl.TextSize=13 vl.TextXAlignment=Enum.TextXAlignment.Right vl.Text="< "..options[ix].." >"vl.Parent=r T(vl,"TextColor3")
rg(k,options[ix],function(v)local i=table.find(options,v)if not i then return end ix=i Fl[k]=options[i]vl.Text="< "..options[i].." >"if callback then task.spawn(callback,options[i])end end)
r.MouseButton1Click:Connect(function()Se[k](options[ix%#options+1])end)
r.MouseButton2Click:Connect(function()Se[k](options[(ix-2)%#options+1])end)
r.MouseEnter:Connect(function()tw(r,.12,{BackgroundTransparency=.3})end)
r.MouseLeave:Connect(function()tw(r,.12,{BackgroundTransparency=.55})end)end
function t:List(text,items,default,callback)local k=name.."/"..text
local lf=Instance.new("Frame")lf.Size=UDim2.new(1,0,0,180)lf.BackgroundTransparency=1 lf.Parent=slt(180)
local hr=Instance.new("TextLabel")hr.BackgroundTransparency=1 hr.Position=UDim2.new(0,0,0,0)hr.Size=UDim2.new(1,0,0,16)hr.Font=FS2 hr.TextSize=13 hr.TextXAlignment=Enum.TextXAlignment.Left hr.TextColor3=C.text hr.Text=string.upper(text)hr.Parent=lf
local sf=Instance.new("ScrollingFrame")sf.Position=UDim2.new(0,0,0,18)sf.Size=UDim2.new(1,0,1,-18)sf.BackgroundColor3=C.row sf.BackgroundTransparency=.45 sf.BorderSizePixel=0 sf.ScrollBarThickness=3 sf.CanvasSize=UDim2.new(0,0,0,#items*28+10)sf.Parent=lf cr(sf,8)T(sf,"ScrollBarImageColor3")
local ll=Instance.new("UIListLayout")ll.Padding=UDim.new(0,2)ll.SortOrder=Enum.SortOrder.LayoutOrder ll.Parent=sf
local pd2=Instance.new("UIPadding")pd2.PaddingTop=UDim.new(0,4)pd2.PaddingLeft=UDim.new(0,4)pd2.PaddingRight=UDim.new(0,6)pd2.PaddingBottom=UDim.new(0,4)pd2.Parent=sf
local bs={}local curn=default or items[1]
local function pn()for n,b in pairs(bs)do local on=(n==curn)b.BackgroundColor3=on and ACC or C.bg b.BackgroundTransparency=on and .55 or .45 b.TextColor3=on and C.text or C.dim end end
rg(k,curn,function(v)curn=v Fl[k]=v pn()if callback then task.spawn(callback,v)end end)
for i,ni in ipairs(items)do local b=Instance.new("TextButton")b.Size=UDim2.new(1,0,0,26)b.BorderSizePixel=0 b.AutoButtonColor=false b.Font=FB b.TextSize=14 b.TextXAlignment=Enum.TextXAlignment.Left b.Text="  "..ni b.LayoutOrder=i b.Parent=sf cr(b,6)
b.MouseButton1Click:Connect(function()Se[k](ni)end)b.MouseEnter:Connect(function()if ni~=curn then b.BackgroundTransparency=.15 end end)b.MouseLeave:Connect(function()if ni~=curn then b.BackgroundTransparency=.45 end end)bs[ni]=b end
pn()end
return t end
local function fitS()local cam=workspace.CurrentCamera local vp=cam and cam.ViewportSize or Vector2.new(1280,720)return math.min(1,(vp.X-20)/W,(vp.Y-20)/H)end
local isOp=false local bs=false local MAl=.94 local MSc=1
local function opM()if bs or isOp then return end bs=true isOp=true main.Visible=true local f=fitS()sc.Scale=f*.94*MSc main.GroupTransparency=1 tw(sc,.35,{Scale=f*MSc})tw(main,.3,{GroupTransparency=1-MAl})task.delay(.35,function()bs=false end)end
local function clM()if bs or not isOp then return end bs=true isOp=false tw(sc,.25,{Scale=fitS()*.94*MSc},Enum.EasingStyle.Quint,Enum.EasingDirection.In)tw(main,.25,{GroupTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.In)task.delay(.26,function()main.Visible=false bs=false end)end
local function tgM()if isOp then clM()else opM()end end
cb.MouseButton1Click:Connect(clM)
cb.MouseEnter:Connect(function()tw(cb,.12,{BackgroundColor3=Color3.fromRGB(190,56,56)})cb.TextColor3=WH end)
cb.MouseLeave:Connect(function()tw(cb,.12,{BackgroundColor3=C.row})cb.TextColor3=C.dim end)
md(tp,main)
tr(UIS.InputBegan:Connect(function(i,p)if p then return end if i.KeyCode==Enum.KeyCode.RightShift or i.KeyCode==Enum.KeyCode.Escape then tgM()end end))
local function sn(name)local n=string.lower(name)if n=="knife"or n:find("knife")or n:find("murderknife")then return "Murderer"end if n=="gun"or n=="revolver"or n=="sheriff gun"or n:find("revolver")or(n:find("gun")and not n:find("shotgun")and not n:find("stun"))then return "Sheriff"end return nil end
local function scC(c,d)if not c then return nil end local l=d and c:GetDescendants()or c:GetChildren()for _,o in ipairs(l)do if o:IsA("Tool")or o:IsA("Model")or o:IsA("Part")or o:IsA("MeshPart")then local r=sn(o.Name)if r then return r end end end return nil end
local function gR(p)local c=p.Character if not c then return "Innocent"end
if p.Team then local tl=string.lower(p.Team.Name)if tl=="murderer"then return "Murderer"end if tl=="sheriff"then return "Sheriff"end if tl=="innocent"then return "Innocent"end end
for _,s in ipairs({p,c})do for _,a in ipairs({"Role","MM2Role","MurderRole","PlayerRole","Team","role","mm2role"})do local v=s:GetAttribute(a)if v~=nil then local rl=string.lower(tostring(v))if rl=="murderer"or rl=="murder"then return "Murderer"end if rl=="sheriff"then return "Sheriff"end if rl=="innocent"then return "Innocent"end end end end
for _,o in ipairs(c:GetChildren())do if o:IsA("Tool")then local r=sn(o.Name)if r then return r end end end
local r=scC(c,true)if r then return r end
local bp=p:FindFirstChildOfClass("Backpack")or p:FindFirstChild("Backpack")
if bp then for _,o in ipairs(bp:GetChildren())do if o:IsA("Tool")then local rr=sn(o.Name)if rr then return rr end end end r=scC(bp,true)if r then return r end end
return "Innocent"end
local rc={}local function gRC(p)local c=rc[p]local n=os.clock()if c and n-c.t<.3 then return c.r end local r=gR(p)rc[p]={r=r,t=n}return r end
Players.PlayerRemoving:Connect(function(p)rc[p]=nil end)
local EF=Instance.new("Folder")EF.Name="luxxsESP"EF.Parent=gui
local E={}
local function sLn(f,p1,p2,th)local dx,dy=p2.X-p1.X,p2.Y-p1.Y f.Position=UDim2.new(0,(p1.X+p2.X)*.5,0,(p1.Y+p2.Y)*.5)f.Size=UDim2.new(0,math.sqrt(dx*dx+dy*dy),0,th)f.Rotation=math.deg(math.atan2(dy,dx))end
local BN={{"Head","UpperTorso"},{"UpperTorso","LowerTorso"},{"UpperTorso","LeftUpperArm"},{"LeftUpperArm","LeftLowerArm"},{"LeftLowerArm","LeftHand"},{"UpperTorso","RightUpperArm"},{"RightUpperArm","RightLowerArm"},{"RightLowerArm","RightHand"},{"LowerTorso","LeftUpperLeg"},{"LeftUpperLeg","LeftLowerLeg"},{"LeftLowerLeg","LeftFoot"},{"LowerTorso","RightUpperLeg"},{"RightUpperLeg","RightLowerLeg"},{"RightLowerLeg","RightFoot"},{"Head","Torso"},{"Torso","Left Arm"},{"Torso","Right Arm"},{"Torso","Left Leg"},{"Torso","Right Leg"}}
local function cE(p)if E[p]or p==LP then return end local d={}
d.box=Instance.new("Frame")d.box.BackgroundTransparency=1 d.box.BorderSizePixel=0 d.box.ZIndex=2 d.box.Parent=EF d.boxStroke=st(d.box,ACC,1.2,0)
local function mL(s,f)local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Font=f or FM l.TextSize=s l.TextColor3=WH l.TextStrokeTransparency=.4 l.TextStrokeColor3=Color3.new(0,0,0)l.Size=UDim2.new(0,260,0,s+2)l.TextXAlignment=Enum.TextXAlignment.Center l.ZIndex=4 l.Parent=EF return l end
d.role=mL(13,FS2)d.name=mL(12)d.dist=mL(11)
d.tracer=Instance.new("Frame")d.tracer.AnchorPoint=Vector2.new(.5,.5)d.tracer.BorderSizePixel=0 d.tracer.ZIndex=2 d.tracer.Parent=EF
d.hpBg=Instance.new("Frame")d.hpBg.BackgroundColor3=Color3.fromRGB(14,14,16)d.hpBg.BorderSizePixel=0 d.hpBg.ZIndex=3 d.hpBg.Parent=EF
d.hpFill=Instance.new("Frame")d.hpFill.AnchorPoint=Vector2.new(0,1)d.hpFill.BackgroundColor3=Color3.fromRGB(70,230,110)d.hpFill.BorderSizePixel=0 d.hpFill.Size=UDim2.new(1,0,1,0)d.hpFill.Position=UDim2.new(0,0,1,0)d.hpFill.ZIndex=4 d.hpFill.Parent=d.hpBg
d.skeleton={}for i=1,#BN do local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.BorderSizePixel=0 f.BackgroundColor3=WH f.Visible=false f.ZIndex=3 f.Parent=EF d.skeleton[i]=f end
E[p]=d end
local function rE(p)local d=E[p]if not d then return end for k,v in pairs(d)do if typeof(v)=="Instance"then pcall(function()v:Destroy()end)elseif type(v)=="table"then for _,o in pairs(v)do pcall(function()o:Destroy()end)end end end E[p]=nil end
for _,p in ipairs(Players:GetPlayers())do if p~=LP then cE(p)end end
Players.PlayerAdded:Connect(function(p)task.wait(.2)cE(p)end)
Players.PlayerRemoving:Connect(function(p)rE(p)end)
local function aEO()return Fl["Visuals/ESP Box"]or Fl["Visuals/Role"]or Fl["Visuals/Name"]or Fl["Visuals/Health"]or Fl["Visuals/Distance"]or Fl["Visuals/Tracers"]or Fl["Visuals/Skeleton"]or Fl["Visuals/Chams"]or Fl["Visuals/Glow"]end
tr(RS.RenderStepped:Connect(function()
local cam=workspace.CurrentCamera if not cam then return end local vp=cam.ViewportSize local t=os.clock()local aO=aEO()
for p,d in pairs(E)do local c=p.Character local h=c and c:FindFirstChildOfClass("Humanoid")local hr=c and c:FindFirstChild("HumanoidRootPart")
local vis=false local mnX,mnY,mxX,mxY=math.huge,math.huge,-math.huge,-math.huge
if c and h and hr and h.Health>0 and aO then for _,pt in ipairs(c:GetChildren())do if pt:IsA("BasePart")then local sp,onS=cam:WorldToViewportPoint(pt.Position)if onS and sp.Z>0 then vis=true mnX=math.min(mnX,sp.X-10)mxX=math.max(mxX,sp.X+10)mnY=math.min(mnY,sp.Y-10)mxY=math.max(mxY,sp.Y+10)end end end end
if vis then local ro=gRC(p)local rcl=RC[ro]or WH local ecl=Fl["Visuals/Color by Role"]and rcl or gc(Fl["Visuals/ESP Color"],t,0)
local w,h2=mxX-mnX,mxY-mnY local cx=(mnX+mxX)*.5
d.box.Visible=Fl["Visuals/ESP Box"]d.box.Position=UDim2.new(0,mnX,0,mnY)d.box.Size=UDim2.new(0,w,0,h2)d.boxStroke.Color=ecl
d.role.Visible=Fl["Visuals/Role"]d.role.Text=string.upper(ro)d.role.TextColor3=rcl d.role.Position=UDim2.new(0,cx-130,0,mnY-48)
d.name.Visible=Fl["Visuals/Name"]d.name.Text=p.Name d.name.TextColor3=ecl d.name.Position=UDim2.new(0,cx-130,0,mnY-32)
local ds=(hr.Position-cam.CFrame.Position).Magnitude
d.dist.Visible=Fl["Visuals/Distance"]d.dist.Text="["..math.floor(ds).."m]"d.dist.Position=UDim2.new(0,cx-130,0,mnY+h2+2)
d.hpBg.Visible=Fl["Visuals/Health"]d.hpBg.Position=UDim2.new(0,mnX-6,0,mnY)d.hpBg.Size=UDim2.new(0,3,0,h2)d.hpFill.Size=UDim2.new(1,0,math.clamp(h.Health/h.MaxHealth,0,1),0)
d.tracer.Visible=Fl["Visuals/Tracers"]if d.tracer.Visible then d.tracer.BackgroundColor3=ecl sLn(d.tracer,Vector2.new(vp.X*.5,vp.Y),Vector2.new(cx,mnY+h2),1)end
local sk=Fl["Visuals/Skeleton"]for i,b in ipairs(BN)do local ln=d.skeleton[i]if sk then local p1=c:FindFirstChild(b[1])local p2=c:FindFirstChild(b[2])
if p1 and p2 then local s1,o1=cam:WorldToViewportPoint(p1.Position)local s2,o2=cam:WorldToViewportPoint(p2.Position)
if o1 and o2 and s1.Z>0 and s2.Z>0 then ln.Visible=true ln.BackgroundColor3=ecl sLn(ln,Vector2.new(s1.X,s1.Y),Vector2.new(s2.X,s2.Y),1.5)else ln.Visible=false end else ln.Visible=false end else ln.Visible=false end end
else d.box.Visible=false d.role.Visible=false d.name.Visible=false d.dist.Visible=false d.hpBg.Visible=false d.tracer.Visible=false for _,ln in ipairs(d.skeleton)do ln.Visible=false end end end end))
do local CM={}
local function dC(p)local h=CM[p]if h then pcall(function()h:Destroy()end)CM[p]=nil end end
Players.PlayerRemoving:Connect(dC)
tr(RS.Heartbeat:Connect(function()
local ch=Fl["Visuals/Chams"]local gl=Fl["Visuals/Glow"]local t=os.clock()
for _,p in ipairs(Players:GetPlayers())do if p~=LP then local c=p.Character local h=c and c:FindFirstChildOfClass("Humanoid")
if(ch or gl)and c and h and h.Health>0 then local hh=CM[p]
if not hh or not hh.Parent or hh.Adornee~=c then if hh then pcall(function()hh:Destroy()end)end
hh=Instance.new("Highlight")hh.Name="luxxsCham"hh.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop hh.Adornee=c
local o=pcall(function()hh.Parent=c end)if not o or not hh.Parent then hh.Parent=EF end CM[p]=hh end
local col if Fl["Visuals/Color by Role"]then col=RC[gRC(p)]or WH else col=gc(Fl["Visuals/ESP Color"],t,0)end
hh.FillColor=col hh.OutlineColor=col
hh.FillTransparency=ch and math.clamp((Fl["Visuals/Chams Fill"]or 50)/100,0,1)or 1
hh.OutlineTransparency=gl and .1 or(ch and .55 or 1)
hh.Enabled=true else dC(p)end end end end))end
local GUN,GGF,dropGun,teleportToGun
do GUN={set={},vis={}}
GGF=Instance.new("Folder")GGF.Name="luxxsGun"GGF.Parent=gui
local GN={GunDrop=true,["Gun Drop"]=true,DroppedGun=true,SheriffGun=true}
local function gP(o)if o:IsA("BasePart")and GN[o.Name]then return o end if o:IsA("Tool")and o.Parent==workspace and sn(o.Name)=="Sheriff"then return o:FindFirstChild("Handle")or o:FindFirstChildWhichIsA("BasePart")end return nil end
local function gV(p)if not p or not p.Parent then return false end if GN[p.Name]then return p:IsDescendantOf(workspace)end local tl=p.Parent return tl:IsA("Tool")and tl.Parent==workspace end
local function aG(o)local p=gP(o)if p then GUN.set[p]=true end end
function dropGun(p)local v=GUN.vis[p]if not v then return end pcall(function()v.hl:Destroy()end)pcall(function()v.bb:Destroy()end)GUN.vis[p]=nil end
for _,o in ipairs(workspace:GetDescendants())do aG(o)end
tr(workspace.DescendantAdded:Connect(aG))
tr(workspace.DescendantRemoving:Connect(function(o)if GUN.set[o]then GUN.set[o]=nil dropGun(o)end end))
local function nG()local hr=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")if not hr then return nil end local b,bd=nil,math.huge
for p in pairs(GUN.set)do if gV(p)then local d=(p.Position-hr.Position).Magnitude if d<bd then b,bd=p,d end end end return b end
tr(RS.RenderStepped:Connect(function()
local on=Fl["Visuals/Gun ESP"]local cam=workspace.CurrentCamera local t=os.clock()
for p in pairs(GUN.set)do if not gV(p)then GUN.set[p]=nil dropGun(p)elseif on then local v=GUN.vis[p]
if not v then local hl=Instance.new("Highlight")hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop hl.FillTransparency=.35 hl.OutlineTransparency=0 hl.Adornee=p hl.Parent=GGF
local bb=Instance.new("BillboardGui")bb.AlwaysOnTop=true bb.Size=UDim2.new(0,120,0,34)bb.StudsOffset=Vector3.new(0,2.5,0)bb.Adornee=p bb.Parent=GGF
local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Size=UDim2.new(1,0,1,0)l.Font=FM l.TextSize=13 l.TextStrokeTransparency=.3 l.TextStrokeColor3=Color3.new(0,0,0)l.Text="GUN"l.Parent=bb
v={hl=hl,bb=bb,lbl=l}GUN.vis[p]=v end
local col=gc(Fl["Visuals/Gun Color"]or"Gold",t,0)v.hl.FillColor=col v.hl.OutlineColor=col v.lbl.TextColor3=col
local ds=cam and math.floor((p.Position-cam.CFrame.Position).Magnitude)or 0 v.lbl.Text="GUN ["..ds.."m]"else dropGun(p)end end end))
function teleportToGun()local p=nG()if not p then nt("Gun not found")return end local hr=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")if not hr then return end hr.CFrame=CFrame.new(p.Position+Vector3.new(0,3,0))hr.AssemblyLinearVelocity=Vector3.zero nt("Teleported to gun")end end
local AP={name="Head",x=33,y=12,w=24,h=24,r=12,dx=45,dy=24},{name="Chest",x=27,y=43,w=36,h=30,r=4,dx=45,dy=58},{name="Stomach",x=30,y=73,w=30,h=30,r=3,dx=45,dy=88},{name="Left Arm",x=12,y=45,w=13,h=60,r=5,dx=18,dy=75},{name="Right Arm",x=65,y=45,w=13,h=60,r=5,dx=72,dy=75},{name="Left Leg",x=25,y=104,w=18,h=62,r=5,dx=34,dy=135},{name="Right Leg",x=47,y=104,w=18,h=62,r=5,dx=56,dy=135}
local AN2={}for i,a in ipairs(AP)do AN2[i]=a.name end
local function rBP(c,n)if not c then return nil end if n=="Head"then return c:FindFirstChild("Head")end if n=="Chest"then return c:FindFirstChild("UpperTorso")or c:FindFirstChild("Torso")end if n=="Stomach"then return c:FindFirstChild("LowerTorso")or c:FindFirstChild("Torso")end if n=="Left Arm"then return c:FindFirstChild("LeftUpperArm")or c:FindFirstChild("Left Arm")end if n=="Right Arm"then return c:FindFirstChild("RightUpperArm")or c:FindFirstChild("Right Arm")end if n=="Left Leg"then return c:FindFirstChild("LeftUpperLeg")or c:FindFirstChild("Left Leg")end if n=="Right Leg"then return c:FindFirstChild("RightUpperLeg")or c:FindFirstChild("Right Leg")end return c:FindFirstChild("Head")end
local function hW()local c=LP.Character if not c then return false end for _,o in ipairs(c:GetChildren())do if o:IsA("Tool")then local n=string.lower(o.Name)if n:find("knife")or n:find("murder")or n:find("gun")or n:find("revolver")or n:find("pistol")or n:find("sheriff")then return true end end end return false end
local rp=RaycastParams.new()pcall(function()rp.FilterType=Enum.RaycastFilterType.Exclude end)
local function hLoS(f,ch,t)rp.FilterDescendantsInstances={LP.Character}local r=workspace:Raycast(f,t-f,rp)if not r then return true end return r.Instance:IsDescendantOf(ch)end
do local VIM=nil pcall(function()VIM=game:GetService("VirtualInputManager")end)
local fC=Instance.new("Frame")fC.AnchorPoint=Vector2.new(.5,.5)fC.Position=UDim2.new(.5,0,.5,0)fC.BackgroundTransparency=1 fC.BorderSizePixel=0 fC.Visible=false fC.ZIndex=2 fC.Parent=gui cr(fC,9999)
local fS=st(fC,ACC,2,.1)T(fS,"Color")fC.BackgroundColor3=ACC fC.BackgroundTransparency=.93
local fL=Instance.new("TextLabel")fL.BackgroundTransparency=1 fL.AnchorPoint=Vector2.new(.5,1)fL.Position=UDim2.new(.5,0,0,-4)fL.Size=UDim2.new(0,180,0,14)fL.Font=FM fL.TextSize=11 fL.TextColor3=WH fL.TextStrokeTransparency=.4 fL.Parent=fC
local function gFR()local cam=workspace.CurrentCamera if not cam then return 200 end return((Fl["Aimbot/FOV"]or 120)/180)*math.min(cam.ViewportSize.X,cam.ViewportSize.Y)end
local function fAT()local cam=workspace.CurrentCamera if not cam then return nil end local ct=Vector2.new(cam.ViewportSize.X*.5,cam.ViewportSize.Y*.5)local rd=gFR()local pn=Fl["Aimbot/Body Part"]or"Head"local b,bd=nil,math.huge local org=cam.CFrame.Position local si=Fl["Aimbot/Skip Innocents"]local wl=Fl["Aimbot/Wall Check"]local my=gRC(LP)
for _,p in ipairs(Players:GetPlayers())do if p~=LP then local c=p.Character local h=c and c:FindFirstChildOfClass("Humanoid")
if c and h and h.Health>0 then local ok=true if si then local r=gRC(p)if r=="Innocent"or r==my then ok=false end end
if ok then local pt=rBP(c,pn)if pt then local sp=cam:WorldToViewportPoint(pt.Position)if sp.Z>0 then local d=(Vector2.new(sp.X,sp.Y)-ct).Magnitude
if d<=rd and d<bd then if(not wl)or hLoS(org,c,pt.Position)then b,bd={player=p,part=pt,char=c},d end end end end end end end end return b end
local aLS=0
local function cc2()if UIS.TouchEnabled or not VIM then return end local cam=workspace.CurrentCamera if not cam then return end local vp=cam.ViewportSize pcall(function()VIM:SendMouseButtonEvent(vp.X*.5,vp.Y*.5,0,true,game,0)end)task.wait(.01)pcall(function()VIM:SendMouseButtonEvent(vp.X*.5,vp.Y*.5,0,false,game,0)end)end
local function gEW()local c=LP.Character if not c then return nil end for _,t in ipairs(c:GetChildren())do if t:IsA("Tool")then local n=string.lower(t.Name)if n:find("knife")or n:find("murder")or n:find("gun")or n:find("revolver")or n:find("pistol")or n:find("sheriff")then return t end end end return nil end
tr(RS.RenderStepped:Connect(function(dt)local cam=workspace.CurrentCamera if not cam then return end
local sF=Fl["Aimbot/Enable"]and Fl["Aimbot/Show FOV"]fC.Visible=sF and true or false
if sF then local rr=gFR()fC.Size=UDim2.new(0,rr*2,0,rr*2)fC.BackgroundColor3=ACC fL.Text="AIM FOV  r="..math.floor(rr).."px"end
if not Fl["Aimbot/Enable"]then return end if Fl["Aimbot/Weapon Only"]and not hW()then return end
local tg=fAT()if tg then local sm=math.clamp(Fl["Aimbot/Smoothness"]or 30,1,100)/100 local al=math.clamp(1-sm,.03,1)*math.min(1,dt*60)cam.CFrame=cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position,tg.part.Position),al)
if Fl["Aimbot/Auto Shoot"]then local tl=gEW()if tl then local tn=string.lower(tl.Name)local isK=tn:find("knife")or tn:find("murder")local nw=os.clock()local dl=(Fl["Aimbot/Shoot Delay (ms)"]or 100)/1000 if nw-aLS>=dl then aLS=nw pcall(function()tl:Activate()end)if not isK then cc2()end end end end end end))end
local KA={Enabled=false,Range=22,DamageDelay=100,AutoEquip=true,Teleport=false,IgnoreInnocents=true,WallCheck=false,Aim=true,Thread=nil,Status="idle"}
do local function isW(t)local n=string.lower(t.Name)return n:find("knife")or n:find("murder")or n:find("gun")or n:find("revolver")or n:find("pistol")or n:find("sheriff")end
local function isK(t)local n=string.lower(t.Name)return n:find("knife")or n:find("murder")end
local function eqp()local c=LP.Character if not c then return nil end local t=c:FindFirstChildOfClass("Tool")if t and isW(t)then return t end return nil end
local function eq()local c=LP.Character if not c then return nil end local h=c:FindFirstChildOfClass("Humanoid")if not h then return nil end local cu=eqp()if cu then return cu end local bp=LP:FindFirstChildOfClass("Backpack")or LP:FindFirstChild("Backpack")if not bp then return nil end for _,t in ipairs(bp:GetChildren())do if t:IsA("Tool")and isW(t)then pcall(function()h:EquipTool(t)end)task.wait(.15)return eqp()or t end end return nil end
local function al(p)local c=p and p.Character local h=c and c:FindFirstChildOfClass("Humanoid")local r=c and c:FindFirstChild("HumanoidRootPart")if c and h and r and h.Health>0 then return c,h,r end return nil end
local ry=RaycastParams.new()pcall(function()ry.FilterType=Enum.RaycastFilterType.Exclude end)
local function lo(f,c,t)ry.FilterDescendantsInstances={LP.Character}local r=workspace:Raycast(f,t-f,ry)if not r then return true end return r.Instance:IsDescendantOf(c)end
local function pT()local _,_,my=al(LP)if not my then return nil end local mr=gRC(LP)local rn=tonumber(KA.Range)or 22 local b,bd=nil,math.huge
for _,p in ipairs(Players:GetPlayers())do if p~=LP then local c,h,r=al(p)
if c and r then local ro=gRC(p)local sk=false if KA.IgnoreInnocents and(ro=="Innocent"or ro==mr)then sk=true end
if not sk then local d=(r.Position-my.Position).Magnitude if d<=rn and d<bd then if(not KA.WallCheck)or lo(my.Position,c,r.Position)then b,bd={plr=p,char=c,hum=h,root=r,role=ro},d end end end end end end return b end
local function fA(tl,pos,tc)local cf=CFrame.new(pos)for _,d in ipairs(tl:GetDescendants())do if d:IsA("RemoteEvent")then pcall(function()d:FireServer(cf)end)pcall(function()d:FireServer(pos)end)pcall(function()d:FireServer(1,cf,"AH2")end)pcall(function()d:FireServer(1,pos,"AH2")end)pcall(function()d:FireServer(tc)end)pcall(function()d:FireServer(1)end)pcall(function()d:FireServer(tl.Handle and tl.Handle.CFrame or cf)end)elseif d:IsA("RemoteFunction")then task.spawn(function()pcall(function()d:InvokeServer(cf)end)pcall(function()d:InvokeServer(pos)end)pcall(function()d:InvokeServer(1,cf,"AH2")end)end)end end end
local function tk(tl,tc)if type(firetouchinterest)~="function"then return end local hd=tl:FindFirstChild("Handle")or tl:FindFirstChildWhichIsA("BasePart")if not hd then return end for _,p in ipairs(tc:GetDescendants())do if p:IsA("BasePart")then pcall(firetouchinterest,hd,p,0)pcall(firetouchinterest,hd,p,1)end end end
local function aC(pos)if not KA.Aim then return end local cam=workspace.CurrentCamera if not cam then return end cam.CFrame=CFrame.lookAt(cam.CFrame.Position,pos)end
local function stp()local _,_,hr=al(LP)if not hr then KA.Status="no char"return end local tg=pT()if not tg then KA.Status="no target"return end local tl=KA.AutoEquip and eq()or eqp()if not tl then KA.Status="no weapon"return end
local tR=tg.root local tH=tg.char:FindFirstChild("Head")or tR local kn=isK(tl)KA.Status="hit "..tg.plr.Name
if KA.Teleport then if kn then hr.CFrame=tR.CFrame*CFrame.new(0,0,1.6)else hr.CFrame=CFrame.lookAt((tR.CFrame*CFrame.new(0,.5,5)).Position,tH.Position)end hr.AssemblyLinearVelocity=Vector3.zero task.wait(.03)end
aC(tH.Position)
if kn then tk(tl,tg.char)pcall(function()tl:Activate()end)fA(tl,tR.Position,tg.char)task.wait(.03)tk(tl,tg.char)pcall(function()tl:Activate()end)fA(tl,tR.Position,tg.char)
else pcall(function()tl:Activate()end)fA(tl,tH.Position,tg.char)task.wait(.03)pcall(function()tl:Activate()end)fA(tl,tH.Position,tg.char)task.wait(.03)local h=tg.char:FindFirstChildOfClass("Humanoid")if h and h.Health>0 then fA(tl,tH.Position,tg.char)end end end
local function lp()while KA.Enabled do local o,e=pcall(stp)if not o then KA.Status="err: "..tostring(e)end task.wait(math.max(.03,(tonumber(KA.DamageDelay)or 100)/1000))end KA.Status="idle"end
function KA.start()if KA.Thread then return end KA.Enabled=true KA.Thread=task.spawn(lp)end
function KA.stop()KA.Enabled=false if KA.Thread then pcall(function()task.cancel(KA.Thread)end)KA.Thread=nil end KA.Status="idle"end end
local FM2={Enabled=false,Mode="Teleport",Speed=80,TeleportDelay=.15,AntiAFK=false,ReturnOnFinish=false,ReturnPos=nil,LoopThread=nil,Collected=0,Status="idle"}
local setAFK,dF,eF,sNC,sF2,stF
do local afk=nil
function setAFK(on)if afk then afk:Disconnect()afk=nil end if not on then return end afk=LP.Idled:Connect(function()VU:CaptureController()VU:ClickButton2(Vector2.new())end)end
local cs,cc3={},{}
local function ic(o)return o:IsA("BasePart")and(o.Name=="Coin"or o.Name:find("Coin")or o.Name:find("coin"))end
local function sCC()for _,c in ipairs(cc3)do c:Disconnect()end cc3={}cs={}
for _,o in ipairs(workspace:GetDescendants())do if ic(o)then cs[o]=true end end
cc3[1]=workspace.DescendantAdded:Connect(function(o)if ic(o)then cs[o]=true end end)
cc3[2]=workspace.DescendantRemoving:Connect(function(o)if cs[o]then cs[o]=nil local hr=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")if FM2.Enabled and hr and(hr.Position-o.Position).Magnitude<12 then FM2.Collected=FM2.Collected+1 end end end)end
local function gNC(pos,sk)local b,bd,nw=nil,math.huge,os.clock()for p in pairs(cs)do if p.Parent and not(sk[p]and sk[p]>nw)then local d=(p.Position-pos).Magnitude if d<bd then b,bd=p,d end end end return b end
local fc,fv,fg=nil,nil,nil
function dF()if fc then fc:Disconnect()fc=nil end local c=LP.Character if c then local hr=c:FindFirstChild("HumanoidRootPart")if hr then if fv then fv:Destroy()fv=nil end if fg then fg:Destroy()fg=nil end end end local h=c and c:FindFirstChildOfClass("Humanoid")if h then h.PlatformStand=false end end
function eF()dF()local c=LP.Character local hr=c and c:FindFirstChild("HumanoidRootPart")local h=c and c:FindFirstChildOfClass("Humanoid")if not hr or not h then return end
fv=Instance.new("BodyVelocity")fv.MaxForce=Vector3.new(9e9,9e9,9e9)fv.Velocity=Vector3.zero fv.Parent=hr
fg=Instance.new("BodyGyro")fg.MaxTorque=Vector3.new(9e9,9e9,9e9)fg.P=2000 fg.CFrame=hr.CFrame fg.Parent=hr
h.PlatformStand=true
fc=RS.RenderStepped:Connect(function()if not FM2.Enabled or not hr or not hr.Parent then return end local cam=workspace.CurrentCamera local md=Vector3.zero local lk=cam.CFrame.LookVector local rt=cam.CFrame.RightVector
if UIS:IsKeyDown(Enum.KeyCode.W)then md=md+lk end if UIS:IsKeyDown(Enum.KeyCode.S)then md=md-lk end if UIS:IsKeyDown(Enum.KeyCode.A)then md=md-rt end if UIS:IsKeyDown(Enum.KeyCode.D)then md=md+rt end
if UIS:IsKeyDown(Enum.KeyCode.Space)then md=md+Vector3.new(0,1,0)end if UIS:IsKeyDown(Enum.KeyCode.LeftShift)then md=md-Vector3.new(0,1,0)end
if md.Magnitude>0 then md=md.Unit end fv.Velocity=md*FM2.Speed fg.CFrame=cam.CFrame end)end
local nc=nil
function sNC(on)if nc then nc:Disconnect()nc=nil end
if not on then local c=LP.Character if c then for _,p in ipairs(c:GetDescendants())do if p:IsA("BasePart")then pcall(function()p.CanCollide=true end)end end end return end
nc=RS.Stepped:Connect(function()if not FM2.Enabled then return end local c=LP.Character if not c then return end for _,p in ipairs(c:GetDescendants())do if p:IsA("BasePart")and p.CanCollide then pcall(function()p.CanCollide=false end)end end end)end
local function tT(pos)local c=LP.Character local hr=c and c:FindFirstChild("HumanoidRootPart")if not hr then return false end hr.CFrame=CFrame.new(pos+Vector3.new(0,3,0))return true end
function sF2()if FM2.LoopThread then return end local h0=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")if FM2.ReturnOnFinish and h0 then FM2.ReturnPos=h0.CFrame end
FM2.LoopThread=task.spawn(function()sCC()local sk={}local lc=0
while FM2.Enabled do local dt=RS.Heartbeat:Wait()local nw=os.clock()local c=LP.Character local hr=c and c:FindFirstChild("HumanoidRootPart")
if hr then local tf=FM2.Mode=="Teleport"and(nw-lc)<.13
if tf then FM2.Status="cooldown"task.wait(.05)
else local co=gNC(hr.Position,sk)
if co then FM2.Status="to coin"local tg=co.Position
if FM2.Mode=="Teleport"then hr.CFrame=CFrame.new(tg)hr.AssemblyLinearVelocity=Vector3.zero
if type(firetouchinterest)=="function"then pcall(firetouchinterest,hr,co,0)pcall(firetouchinterest,hr,co,1)end
if FM2.TeleportDelay>0 then task.wait(FM2.TeleportDelay)end lc=os.clock()
else local d=tg-hr.Position local st=FM2.Speed*dt if d.Magnitude<=st then hr.CFrame=CFrame.new(tg)else hr.CFrame=CFrame.new(hr.Position+d.Unit*st)end hr.AssemblyLinearVelocity=Vector3.zero end
if(hr.Position-tg).Magnitude<4 then sk[co]=os.clock()+8 end
else FM2.Status="no coins"task.wait(.2)end end end end
if FM2.ReturnOnFinish and FM2.ReturnPos then tT(FM2.ReturnPos.Position)end FM2.Status="idle"end)end
function stF()FM2.Enabled=false if FM2.LoopThread then pcall(function()task.cancel(FM2.LoopThread)end)FM2.LoopThread=nil end for _,c in ipairs(cc3)do c:Disconnect()end cc3={}dF()sNC(false)end end
local MV={Fly=false,Speed=60,Noclip=false}
local fU,fD,dFM,sNM
do local mC,mV,mG,mCt=nil,nil,nil,nil local uH,dH=false,false
local function mFB(txt,y)local b=Instance.new("TextButton")b.AnchorPoint=Vector2.new(1,.5)b.Position=UDim2.new(1,-24,.5,y)b.Size=UDim2.new(0,54,0,44)b.BackgroundColor3=C.bg b.BackgroundTransparency=.1 b.BorderSizePixel=0 b.Text=txt b.Font=FM b.TextSize=14 b.TextColor3=C.text b.AutoButtonColor=false b.Visible=false b.ZIndex=5 b.Parent=gui local s=st(b,ACC,1.5,0)T(s,"Color")return b end
fU,fD=mFB("UP",-28),mFB("DN",28)
local function bH2(b,s) b.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then s(true)b.BackgroundColor3=ACC b.TextColor3=C.bg end end)
b.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then s(false)b.BackgroundColor3=C.bg b.TextColor3=C.text end end)end
bH2(fU,function(v)uH=v end)bH2(fD,function(v)dH=v end)
local function gMV()if mCt then local o,v=pcall(function()return mCt:GetMoveVector()end)if o and typeof(v)=="Vector3"then return v end end local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")local cam=workspace.CurrentCamera if h and cam then return cam.CFrame:VectorToObjectSpace(h.MoveDirection)end return Vector3.zero end
function dFM()if mC then mC:Disconnect()mC=nil end if mV then pcall(function()mV:Destroy()end)mV=nil end if mG then pcall(function()mG:Destroy()end)mG=nil end local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")if h then h.PlatformStand=false pcall(function()h:ChangeState(Enum.HumanoidStateType.GettingUp)end)end end
eFM=function()dFM()local c=LP.Character local hr=c and c:FindFirstChild("HumanoidRootPart")local h=c and c:FindFirstChildOfClass("Humanoid")if not hr or not h then return end
if not mCt then pcall(function()local pm=LP:FindFirstChild("PlayerScripts")and LP.PlayerScripts:FindFirstChild("PlayerModule")if pm then mCt=require(pm):GetControls()end end)end
mV=Instance.new("BodyVelocity")mV.MaxForce=Vector3.new(9e9,9e9,9e9)mV.Velocity=Vector3.zero mV.Parent=hr
mG=Instance.new("BodyGyro")mG.MaxTorque=Vector3.new(9e9,9e9,9e9)mG.P=9e4 mG.D=800 mG.CFrame=hr.CFrame mG.Parent=hr
h.PlatformStand=true
mC=RS.RenderStepped:Connect(function()if not hr.Parent then return end local cam=workspace.CurrentCamera if not cam then return end local mv=gMV()local dr=cam.CFrame:VectorToWorldSpace(Vector3.new(mv.X,0,mv.Z))
if UIS:IsKeyDown(Enum.KeyCode.W)and mv.Magnitude==0 then dr=dr+cam.CFrame.LookVector end
if UIS:IsKeyDown(Enum.KeyCode.Space)or UIS:IsKeyDown(Enum.KeyCode.E)or uH then dr=dr+Vector3.new(0,1,0)end
if UIS:IsKeyDown(Enum.KeyCode.LeftShift)or UIS:IsKeyDown(Enum.KeyCode.Q)or dH then dr=dr-Vector3.new(0,1,0)end
if dr.Magnitude>1 then dr=dr.Unit end mV.Velocity=dr*MV.Speed
local lk=cam.CFrame.LookVector if Vector3.new(lk.X,0,lk.Z).Magnitude>.01 then mG.CFrame=CFrame.lookAt(hr.Position,hr.Position+Vector3.new(lk.X,0,lk.Z))end end)end
local nC,nT=nil,{}
function sNM(on)if nC then nC:Disconnect()nC=nil end
if on then nC=RS.Stepped:Connect(function()local c=LP.Character if not c then return end for _,p in ipairs(c:GetDescendants())do if p:IsA("BasePart")and p.CanCollide then nT[p]=true p.CanCollide=false end end end)
else for p in pairs(nT)do if p.Parent then pcall(function()p.CanCollide=true end)end end nT={}end end end
local AW={Enabled=false,Teleport=true,AutoEquip=true,Delay=.2,Thread=nil,Status="idle"}
local sAW,stAW
do local VIM=nil pcall(function()VIM=game:GetService("VirtualInputManager")end)
local function isW(t)local n=string.lower(t.Name)return n:find("knife")or n:find("gun")or n:find("revolver")or n:find("pistol")or n:find("sheriff")or n:find("murder")end
local function isK(t)local n=string.lower(t.Name)return n:find("knife")or n:find("murder")end
local function gEq()local c=LP.Character if not c then return nil end local t=c:FindFirstChildOfClass("Tool")if t and isW(t)then return t end return nil end
local function eq2()local c=LP.Character if not c then return nil end local h=c:FindFirstChildOfClass("Humanoid")if not h then return nil end local cu=gEq()if cu then return cu end local bp=LP:FindFirstChildOfClass("Backpack")or LP:FindFirstChild("Backpack")if not bp then return nil end for _,t in ipairs(bp:GetChildren())do if t:IsA("Tool")and isW(t)then pcall(function()h:EquipTool(t)end)task.wait(.2)return gEq()or t end end return nil end
local function al2(p)local c=p and p.Character local h=c and c:FindFirstChildOfClass("Humanoid")local r=c and c:FindFirstChild("HumanoidRootPart")if c and h and r and h.Health>0 then return c,h,r end return nil end
local function fT2(mr)local _,_,myR=al2(LP)if not myR then return nil end local b,bs=nil,math.huge
for _,p in ipairs(Players:GetPlayers())do if p~=LP then local c,h,r=al2(p)
if c then local ro=gRC(p)local sc=nil
if mr=="Murderer"then sc=(ro=="Sheriff")and 0 or 1 elseif mr=="Sheriff"then if ro=="Murderer"then sc=0 end end
if sc then local cb=sc*100000+(r.Position-myR.Position).Magnitude if cb<bs then bs=cb b={plr=p,char=c,hum=h,root=r,role=ro}end end end end end return b end
local function fR(tl,pos,tc)local cf=CFrame.new(pos)for _,d in ipairs(tl:GetDescendants())do if d:IsA("RemoteEvent")then pcall(function()d:FireServer(cf)end)pcall(function()d:FireServer(pos)end)pcall(function()d:FireServer(1,cf,"AH2")end)pcall(function()d:FireServer(1,pos,"AH2")end)pcall(function()d:FireServer(tc)end)pcall(function()d:FireServer(tl.Handle.CFrame)end)elseif d:IsA("RemoteFunction")then task.spawn(function()pcall(function()d:InvokeServer(cf)end)pcall(function()d:InvokeServer(pos)end)end)end end end
local function tK(tl,tc)if type(firetouchinterest)~="function"then return end local hd=tl:FindFirstChild("Handle")or tl:FindFirstChildWhichIsA("BasePart")if not hd then return end for _,p in ipairs(tc:GetChildren())do if p:IsA("BasePart")then pcall(firetouchinterest,hd,p,0)pcall(firetouchinterest,hd,p,1)end end end
local function cA(v)if not VIM or UIS.TouchEnabled then return end pcall(function()VIM:SendMouseButtonEvent(v.X,v.Y,0,true,game,0)end)task.wait(.01)pcall(function()VIM:SendMouseButtonEvent(v.X,v.Y,0,false,game,0)end)end
local function aA(t)local cam=workspace.CurrentCamera if not cam then return end cam.CFrame=CFrame.lookAt(cam.CFrame.Position,t)end
local function stp2()local _,_,hr=al2(LP)if not hr then AW.Status="waiting"return end local mr=gRC(LP)if mr~="Murderer"and mr~="Sheriff"then AW.Status="innocent"return end local tg=fT2(mr)if not tg then AW.Status="no targets"return end local tl=AW.AutoEquip and eq2()or gEq()if not tl then AW.Status="no weapon"return end
local cam=workspace.CurrentCamera local tR=tg.root local tH=tg.char:FindFirstChild("Head")or tR local kn=isK(tl)AW.Status=(mr=="Sheriff"and"shoot "or"stab ")..tg.plr.Name
if AW.Teleport then if kn then hr.CFrame=tR.CFrame*CFrame.new(0,0,1.8)else hr.CFrame=CFrame.lookAt((tR.CFrame*CFrame.new(0,.5,6)).Position,tH.Position)end hr.AssemblyLinearVelocity=Vector3.zero task.wait(.05)end
aA(tH.Position)task.wait(.02)
if kn then tK(tl,tg.char)pcall(function()tl:Activate()end)fR(tl,tR.Position,tg.char)task.wait(.05)local h=tg.char:FindFirstChildOfClass("Humanoid")if h and h.Health>0 then tK(tl,tg.char)pcall(function()tl:Activate()end)end
else pcall(function()tl:Activate()end)fR(tl,tH.Position,tg.char)if cam then local vp=cam.ViewportSize cA(Vector2.new(vp.X*.5,vp.Y*.5))end task.wait(.02)fR(tl,tH.Position,tg.char)pcall(function()tl:Activate()end)task.wait(.05)local h=tg.char:FindFirstChildOfClass("Humanoid")if h and h.Health>0 and cam then local vp=cam.ViewportSize cA(Vector2.new(vp.X*.5,vp.Y*.5))fR(tl,tH.Position,tg.char)end end task.wait(.15)end
local function lp2()while AW.Enabled do local o,e=pcall(stp2)if not o then AW.Status="err: "..tostring(e)end task.wait(AW.Delay)end AW.Status="idle"end
function sAW()AW.Enabled=true if not AW.Thread then AW.Thread=task.spawn(lp2)end end
function stAW()AW.Enabled=false if AW.Thread then pcall(function()task.cancel(AW.Thread)end)AW.Thread=nil end AW.Status="idle"end end
local MV2={WalkSpeed=16,SpinSpeed=0,SpinEnabled=false}
local aWS,sSp,stSp
do local spA=0 local spT=nil
function aWS(v)v=tonumber(v)or 16 MV2.WalkSpeed=v local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if h then h.WalkSpeed=v end end
tr(LP.CharacterAdded:Connect(function(c)local h=c:WaitForChild("Humanoid",10)if h then task.wait(.4)h.WalkSpeed=MV2.WalkSpeed end end))
local function spL()while MV2.SpinEnabled do local dt=RS.RenderStepped:Wait()local c=LP.Character local hr=c and c:FindFirstChild("HumanoidRootPart")if hr then spA=spA+math.rad(MV2.SpinSpeed)*dt*3 if spA>math.pi*2 then spA=spA-math.pi*2 end hr.CFrame=CFrame.new(hr.Position)*CFrame.Angles(0,spA,0)end end end
function sSp()if spT then return end MV2.SpinEnabled=true spT=task.spawn(spL)end
function stSp()MV2.SpinEnabled=false if spT then pcall(function()task.cancel(spT)end)spT=nil end end end
local BH={Enabled=false,Accel=40,Max=120,Boost=4,lastJump=0,vel=nil}
do tr(UIS.JumpRequest:Connect(function()BH.lastJump=os.clock()end))
tr(RS.Heartbeat:Connect(function(dt)if not BH.Enabled or MV.Fly then BH.vel=nil return end local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")local hr=c and c:FindFirstChild("HumanoidRootPart")if not h or not hr or h.Health<=0 then BH.vel=nil return end
local hd=UIS:IsKeyDown(Enum.KeyCode.Space)or(os.clock()-BH.lastJump<.25)local ws=h.MoveDirection local gd=h.FloorMaterial~=Enum.Material.Air
if not hd or ws.Magnitude<.1 then if gd then BH.vel=nil end return end ws=ws.Unit
local v=hr.AssemblyLinearVelocity local hv=BH.vel or Vector3.new(v.X,0,v.Z)
if gd then local sp=math.min(math.max(hv.Magnitude,h.WalkSpeed)+BH.Boost,BH.Max)hv=ws*sp local jy=h.UseJumpPower and h.JumpPower or math.sqrt(2*workspace.Gravity*h.JumpHeight)h:ChangeState(Enum.HumanoidStateType.Jumping)hr.AssemblyLinearVelocity=Vector3.new(hv.X,jy,hv.Z)
else local sp=hv.Magnitude if sp>.1 then local d=hv.Unit:Lerp(ws,math.clamp(dt*4,0,1))if d.Magnitude>.01 then hv=d.Unit*sp end else hv=ws*h.WalkSpeed end hv=hv+ws*BH.Accel*dt if hv.Magnitude>BH.Max then hv=hv.Unit*BH.Max end hr.AssemblyLinearVelocity=Vector3.new(hv.X,v.Y,hv.Z)end BH.vel=hv end))end
local SK,SKN
do SK={orig=setmetatable({},{__mode="k"}),applied=setmetatable({},{__mode="k"}),live={},cfg={KnifeMesh="",KnifeTex="",GunMesh="",GunTex=""}}
local MT=Enum.Material
local SKS={["Chroma"]={a=Color3.fromRGB(255,0,0),b=Color3.fromRGB(255,255,0),mat=MT.Neon,rainbow=true,trail=true,spark=true},["Chroma Dark"]={a=Color3.fromRGB(40,0,60),b=Color3.fromRGB(255,0,180),mat=MT.Neon,rainbow=true,trail=true,spark=true},["Ice Shard"]={a=Color3.fromRGB(150,225,255),b=Color3.fromRGB(235,250,255),mat=MT.Ice,trail=true,spark=true},["Frostbite"]={a=Color3.fromRGB(80,180,255),b=Color3.fromRGB(255,255,255),mat=MT.Plastic,trail=true,spark=true},["Harvester"]={a=Color3.fromRGB(35,12,50),b=Color3.fromRGB(255,120,20),t=Color3.fromRGB(255,120,20),mat=MT.Metal,trail=true,spark=true},["Heartblade"]={a=Color3.fromRGB(255,50,110),b=Color3.fromRGB(255,200,220),mat=MT.Neon,trail=true,spark=true},["Gingerblade"]={a=Color3.fromRGB(210,120,50),b=Color3.fromRGB(255,255,255),mat=MT.SmoothPlastic},["Corrupt"]={a=Color3.fromRGB(20,20,20),b=Color3.fromRGB(190,0,0),t=Color3.fromRGB(190,0,0),mat=MT.Metal,trail=true},["Lightbringer"]={a=Color3.fromRGB(255,235,150),b=Color3.fromRGB(255,255,255),mat=MT.Neon,trail=true,spark=true},["Batwing"]={a=Color3.fromRGB(25,20,35),b=Color3.fromRGB(130,60,220),t=Color3.fromRGB(130,60,220),mat=MT.Metal,trail=true},["Slasher"]={a=Color3.fromRGB(90,0,0),b=Color3.fromRGB(255,40,40),mat=MT.Neon,trail=true,spark=true},["Shadow"]={a=Color3.fromRGB(0,0,0),b=Color3.fromRGB(60,60,60),t=Color3.fromRGB(60,60,60),mat=MT.Metal,trail=true},["Candy"]={a=Color3.fromRGB(255,180,220),b=Color3.fromRGB(255,255,255),mat=MT.Neon,trail=true,spark=true},["Toxic"]={a=Color3.fromRGB(50,255,50),b=Color3.fromRGB(180,255,50),t=Color3.fromRGB(120,255,80),mat=MT.Neon,trail=true,spark=true},["Lava"]={a=Color3.fromRGB(180,30,0),b=Color3.fromRGB(255,180,0),t=Color3.fromRGB(255,120,0),mat=MT.Neon,trail=true,spark=true},["Plasma"]={a=Color3.fromRGB(180,0,255),b=Color3.fromRGB(80,180,255),t=Color3.fromRGB(180,80,255),mat=MT.Neon,trail=true,spark=true},["Void"]={a=Color3.fromRGB(10,0,30),b=Color3.fromRGB(60,0,100),t=Color3.fromRGB(60,0,120),mat=MT.Neon,trail=true,spark=true},["Royal"]={a=Color3.fromRGB(180,140,20),b=Color3.fromRGB(255,220,80),t=Color3.fromRGB(255,200,60),mat=MT.Metal,trail=true,spark=true},["Emerald"]={a=Color3.fromRGB(20,180,60),b=Color3.fromRGB(180,255,200),mat=MT.Neon,trail=true,spark=true},["Sapphire"]={a=Color3.fromRGB(20,60,200),b=Color3.fromRGB(150,220,255),mat=MT.Neon,trail=true,spark=true},["Ruby"]={a=Color3.fromRGB(180,20,60),b=Color3.fromRGB(255,180,200),mat=MT.Neon,trail=true,spark=true},["Amethyst"]={a=Color3.fromRGB(130,50,220),b=Color3.fromRGB(220,180,255),mat=MT.Neon,trail=true,spark=true},["Ghost"]={a=Color3.fromRGB(200,220,255),b=Color3.fromRGB(255,255,255),mat=MT.Neon,trail=true,spark=true},["Neon Pink"]={a=Color3.fromRGB(255,0,120),b=Color3.fromRGB(255,180,255),mat=MT.Neon,trail=true,spark=true},["Neon Blue"]={a=Color3.fromRGB(0,180,255),b=Color3.fromRGB(180,240,255),mat=MT.Neon,trail=true,spark=true},["Neon Green"]={a=Color3.fromRGB(0,255,80),b=Color3.fromRGB(180,255,180),mat=MT.Neon,trail=true,spark=true},["Gold"]={a=Color3.fromRGB(220,180,20),b=Color3.fromRGB(255,240,180),t=Color3.fromRGB(255,220,60),mat=MT.Metal,trail=true,spark=true},["Silver"]={a=Color3.fromRGB(180,180,200),b=Color3.fromRGB(255,255,255),mat=MT.Metal,trail=true,spark=true},["Bronze"]={a=Color3.fromRGB(150,90,30),b=Color3.fromRGB(220,180,120),mat=MT.Metal},["Blood"]={a=Color3.fromRGB(80,0,0),b=Color3.fromRGB(180,0,0),t=Color3.fromRGB(180,0,0),mat=MT.Metal,trail=true,spark=true},["Aqua"]={a=Color3.fromRGB(0,180,180),b=Color3.fromRGB(150,255,255),mat=MT.Neon,trail=true,spark=true}}
SKN={"Off"}for n in pairs(SKS)do SKN[#SKN+1]=n end table.sort(SKN,function(a,b)if a==b then return false end if a=="Off"then return true end if b=="Off"then return false end return a<b end)
local function tK2(t)local r=sn(t.Name)if r=="Murderer"then return "Knife"elseif r=="Sheriff"then return "Gun"end return nil end
local function aId(v)local x=tostring(v or""):gsub("%s+","")if x==""then return""end if x:match("^%d+$")then return"rbxassetid://"..x end return x end
local function sP2(tl)if SK.orig[tl]then return end local o={}
for _,d in ipairs(tl:GetDescendants())do if d:IsA("BasePart")then local e={Color=d.Color,Material=d.Material,Transparency=d.Transparency}if d:IsA("MeshPart")then e.TextureID=d.TextureID end o[d]=e elseif d:IsA("SpecialMesh")then o[d]={TextureId=d.TextureId,VertexColor=d.VertexColor}end end SK.orig[tl]=o end
local function rT(tl)for _,d in ipairs(tl:GetDescendants())do if d.Name=="luxxsFx"or d.Name=="luxxsCustom"then pcall(function()d:Destroy()end)end end
local o=SK.orig[tl]if o then for ins,e in pairs(o)do if ins.Parent then for k,v in pairs(e)do pcall(function()ins[k]=v end)end end end end SK.applied[tl]=nil SK.live[tl]=nil end
local function aT(tl,kind)local sn2=Fl["Skins/"..kind.." Skin"]or"Off"local df=SKS[sn2]local mh=aId(SK.cfg[kind.."Mesh"])local tx=aId(SK.cfg[kind.."Tex"])local sl=(Fl["Skins/Mesh Scale %"]or 100)/100 local sg=sn2.."|"..mh.."|"..tx.."|"..sl
if SK.applied[tl]==sg then return end rT(tl)SK.applied[tl]=sg if not df and mh==""and tx==""then return end sP2(tl)
local hd=tl:FindFirstChild("Handle")or tl:FindFirstChildWhichIsA("BasePart",true)local ps={}
if df then local i=0 for _,d in ipairs(tl:GetDescendants())do if d:IsA("BasePart")then i=i+1 ps[#ps+1]=d d.Material=df.mat d.Color=(i%2==0)and(df.b or df.a)or df.a if d:IsA("MeshPart")then d.TextureID=""end elseif d:IsA("SpecialMesh")then d.TextureId=""d.VertexColor=Vector3.new(1,1,1)end end end
if mh~=""and hd then for _,d in ipairs(tl:GetDescendants())do if d:IsA("BasePart")then d.Transparency=1 end end
local cp=Instance.new("Part")cp.Name="luxxsCustom"cp.Size=Vector3.new(1,1,1)cp.CanCollide=false cp.CanQuery=false cp.CanTouch=false cp.Massless=true if df then cp.Color=df.a cp.Material=df.mat end
local sm=Instance.new("SpecialMesh")sm.MeshType=Enum.MeshType.FileMesh sm.MeshId=mh sm.TextureId=tx sm.Scale=Vector3.new(sl,sl,sl)sm.Parent=cp
local w=Instance.new("Weld")w.Part0=hd w.Part1=cp w.Parent=cp cp.Parent=tl ps[#ps+1]=cp
elseif tx~=""then for _,d in ipairs(tl:GetDescendants())do if d:IsA("MeshPart")then d.TextureID=tx elseif d:IsA("SpecialMesh")then d.TextureId=tx end end end
local tr,pe if df and hd then local col=df.t or df.a
if df.trail then local sz=hd.Size local m=math.max(sz.X,sz.Y,sz.Z)local ax=(sz.X==m)and Vector3.new(1,0,0)or((sz.Y==m)and Vector3.new(0,1,0)or Vector3.new(0,0,1))
local a0=Instance.new("Attachment")a0.Name="luxxsFx"a0.Position=ax*(m/2)a0.Parent=hd
local a1=Instance.new("Attachment")a1.Name="luxxsFx"a1.Position=-ax*(m/2)a1.Parent=hd
tr=Instance.new("Trail")tr.Name="luxxsFx"tr.Attachment0=a0 tr.Attachment1=a1 tr.Lifetime=.4 tr.LightEmission=.8 tr.FaceCamera=true tr.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,.2),NumberSequenceKeypoint.new(1,1)})tr.Color=ColorSequence.new(col)tr.Parent=hd end
if df.spark then pe=Instance.new("ParticleEmitter")pe.Name="luxxsFx"pe.Rate=18 pe.Lifetime=NumberRange.new(.4,.8)pe.Speed=NumberRange.new(1,3)pe.LightEmission=1 pe.Size=NumberSequence.new({NumberSequenceKeypoint.new(0,.2),NumberSequenceKeypoint.new(1,0)})pe.Color=ColorSequence.new(col)pe.Parent=hd end end
if df and df.rainbow then SK.live[tl]={parts=ps,tr=tr,pe=pe}end end
local function skR()local r={}if LP.Character then r[#r+1]=LP.Character end local bp=LP:FindFirstChildOfClass("Backpack")or LP:FindFirstChild("Backpack")if bp then r[#r+1]=bp end return r end
function SK.refresh()local on=Fl["Skins/Enable"]for _,rt in ipairs(skR())do for _,t in ipairs(rt:GetChildren())do if t:IsA("Tool")then local k=tK2(t)if k then if on then aT(t,k)elseif SK.applied[t]then rT(t)end end end end end end
function SK.restoreAll()for _,rt in ipairs(skR())do for _,t in ipairs(rt:GetChildren())do if t:IsA("Tool")then pcall(rT,t)end end end end
tr(RS.Heartbeat:Connect(function()if next(SK.live)==nil then return end local hue=(os.clock()*.35)%1 for tl,l in pairs(SK.live)do if not tl.Parent then SK.live[tl]=nil else for i,p in ipairs(l.parts)do if p.Parent then p.Color=Color3.fromHSV((hue+i*.07)%1,.85,1)end end local c=Color3.fromHSV(hue,.85,1)if l.tr and l.tr.Parent then l.tr.Color=ColorSequence.new(c)end if l.pe and l.pe.Parent then l.pe.Color=ColorSequence.new(c)end end end end))
task.spawn(function()while gui.Parent do task.wait(.25)pcall(SK.refresh)
if Fl["Skins/Enable"]then local c=LP.Character if c then for _,t in ipairs(c:GetChildren())do if t:IsA("Tool")then local k=tK2(t)if k then pcall(aT,t,k)end end end end
local bp=LP:FindFirstChildOfClass("Backpack")or LP:FindFirstChild("Backpack")if bp then for _,t in ipairs(bp:GetChildren())do if t:IsA("Tool")then local k=tK2(t)if k then pcall(aT,t,k)end end end end end end end)end
local FP={Enabled=false,Target=10000,Current=0}local oFC=nil
local function aFC(c)if type(setfpscap)=="function"then pcall(setfpscap,c)end FP.Current=c end
local function eFP()if type(getfpscap)=="function"then local o,c=pcall(getfpscap)if o then oFC=c end end aFC(FP.Target)nt("FPS unlocked to "..FP.Target)end
local function dFP()if oFC then aFC(oFC)else aFC(60)end end
local fG=Instance.new("ScreenGui")fG.Name="luxxsFPS"fG.ResetOnSpawn=false fG.IgnoreGuiInset=true fG.DisplayOrder=100 fG.Parent=par
local fF=Instance.new("Frame")fF.AnchorPoint=Vector2.new(1,0)fF.Position=UDim2.new(1,-12,0,12)fF.Size=UDim2.new(0,84,0,24)fF.BackgroundColor3=C.bg fF.BackgroundTransparency=.1 fF.BorderSizePixel=0 fF.ZIndex=5 fF.Parent=fG
st(fF,C.line,1,0)
local fN=Instance.new("TextLabel")fN.BackgroundTransparency=1 fN.Position=UDim2.new(0,10,0,0)fN.Size=UDim2.new(1,-12,1,0)fN.Font=FM fN.TextSize=12 fN.TextColor3=C.text fN.TextXAlignment=Enum.TextXAlignment.Left fN.Text="0 FPS"fN.ZIndex=6 fN.Parent=fF
local FPC={Avg=0,Max=0,Frames=0,Last=tick()}
task.spawn(function()while fG.Parent do RS.RenderStepped:Wait()FPC.Frames=FPC.Frames+1 local el=tick()-FPC.Last if el>=.25 then local fps=math.floor(FPC.Frames/el+.5)FPC.Frames=0 FPC.Last=tick()FPC.Avg=FPC.Avg==0 and fps or(FPC.Avg*.9+fps*.1)if fps>FPC.Max then FPC.Max=fps end fN.Text=tostring(fps).." FPS"end end end)
md(fF,fF)
local setQB,appQB,refQB
local tpgRef=nil
do local QBA={{label="Aimbot",flag="Aimbot/Enable",icon="AIM",def=true},{label="Auto Shoot",flag="Aimbot/Auto Shoot",icon="SHT",def=true},{label="Kill Aura",flag="KillAura/Enable",icon="KLA",def=true},{label="Fly",flag="Move/Fly",icon="FLY",def=true},{label="Noclip",flag="Move/Noclip",icon="NLP",def=true},{label="Bunnyhop",flag="Move/Bunnyhop",icon="BHP",def=true},{label="Auto Win",flag="Aimbot/Auto Win",icon="AWN",def=true},{label="Auto Farm",flag="Farm/Enable Farm",icon="FRM",def=true},{label="TP Gun",flag="__tpgun",icon="TPG",def=true,action=function()if tpgRef then tpgRef()end end},{label="Spin",flag="Move/Spin",icon="SPN",def=false},{label="ESP Box",flag="Visuals/ESP Box",icon="BOX",def=false},{label="Chams",flag="Visuals/Chams",icon="CHM",def=false},{label="Skeleton",flag="Visuals/Skeleton",icon="SKL",def=false},{label="Tracers",flag="Visuals/Tracers",icon="TRC",def=false},{label="Gun ESP",flag="Visuals/Gun ESP",icon="GUN",def=false},{label="Wings",flag="Visuals/Wings",icon="WNG",def=false},{label="Chinese Hat",flag="Visuals/Chinese Hat",icon="HAT",def=false},{label="Trail",flag="Visuals/Trail",icon="TRL",def=false}}
local QB=Instance.new("CanvasGroup")QB.AnchorPoint=Vector2.new(0,.5)QB.Position=UDim2.new(0,24,.5,0)QB.Size=UDim2.new(0,80,0,0)QB.AutomaticSize=Enum.AutomaticSize.Y QB.BackgroundColor3=C.bg QB.BackgroundTransparency=.1 QB.GroupTransparency=1 QB.BorderSizePixel=0 QB.ZIndex=6 QB.Visible=false QB.Parent=gui cr(QB,14)
local qS=st(QB,ACC,1.5,.35)T(qS,"Color")
local qH=Instance.new("Frame")qH.Size=UDim2.new(1,0,0,16)qH.BackgroundColor3=WH qH.BackgroundTransparency=.9 qH.BorderSizePixel=0 qH.ZIndex=8 qH.Parent=QB cr(qH,8)
local qL=Instance.new("UIListLayout")qL.Padding=UDim.new(0,4)qL.SortOrder=Enum.SortOrder.LayoutOrder qL.HorizontalAlignment=Enum.HorizontalAlignment.Center qL.Parent=QB
local qP=Instance.new("UIPadding")qP.PaddingTop=UDim.new(0,20)qP.PaddingBottom=UDim.new(0,8)qP.PaddingLeft=UDim.new(0,7)qP.PaddingRight=UDim.new(0,7)qP.Parent=QB
local qT=Instance.new("TextButton")qT.Size=UDim2.new(0,22,0,44)qT.BackgroundColor3=C.bg qT.BackgroundTransparency=.15 qT.BorderSizePixel=0 qT.Text="‹"qT.Font=FM qT.TextSize=18 qT.TextColor3=C.text qT.AutoButtonColor=false qT.ZIndex=7 qT.Visible=false qT.Parent=gui cr(qT,10)st(qT,C.line,1,.3)
local QP2={["Left"]=function()QB.AnchorPoint=Vector2.new(0,.5)QB.Position=UDim2.new(0,24,.5,0)qT.AnchorPoint=Vector2.new(0,.5)qT.Position=UDim2.new(0,4,.5,0)end,["Right"]=function()QB.AnchorPoint=Vector2.new(1,.5)QB.Position=UDim2.new(1,-24,.5,0)qT.AnchorPoint=Vector2.new(1,.5)qT.Position=UDim2.new(1,-4,.5,0)end,["Bottom"]=function()QB.AnchorPoint=Vector2.new(.5,1)QB.Position=UDim2.new(.5,0,1,-24)qT.AnchorPoint=Vector2.new(.5,1)qT.Position=UDim2.new(.5,0,1,-4)end,["Top"]=function()QB.AnchorPoint=Vector2.new(.5,0)QB.Position=UDim2.new(.5,0,0,24)qT.AnchorPoint=Vector2.new(.5,0)qT.Position=UDim2.new(.5,0,0,4)end,["Left-Top"]=function()QB.AnchorPoint=Vector2.new(0,0)QB.Position=UDim2.new(0,24,0,80)qT.AnchorPoint=Vector2.new(0,0)qT.Position=UDim2.new(0,4,0,80)end,["Left-Bottom"]=function()QB.AnchorPoint=Vector2.new(0,1)QB.Position=UDim2.new(0,24,1,-80)qT.AnchorPoint=Vector2.new(0,1)qT.Position=UDim2.new(0,4,1,-80)end,["Right-Top"]=function()QB.AnchorPoint=Vector2.new(1,0)QB.Position=UDim2.new(1,-24,0,80)qT.AnchorPoint=Vector2.new(1,0)qT.Position=UDim2.new(1,-4,0,80)end,["Right-Bottom"]=function()QB.AnchorPoint=Vector2.new(1,1)QB.Position=UDim2.new(1,-24,1,-80)qT.AnchorPoint=Vector2.new(1,1)qT.Position=UDim2.new(1,-4,1,-80)end}
local curQP="Left"local qE,qX=false,false local qS2=UDim2.new(0,24,.5,0)local qTk=0 local qAU=0
local function qAF(p,e)local d if p:find("Left")then d="L"elseif p:find("Right")then d="R"elseif p=="Top"then d="T"else d="B"end local cA={L="‹",R="›",T="▲",B="▼"}local oA={L="›",R="‹",T="▼",B="▲"}return e and cA[d]or oA[d]end
local function qSA()qT.Text=qAF(curQP,qX)end
local function qHF(p)local o=140 if curQP:find("Left")then return UDim2.new(p.X.Scale,p.X.Offset-o,p.Y.Scale,p.Y.Offset)elseif curQP:find("Right")then return UDim2.new(p.X.Scale,p.X.Offset+o,p.Y.Scale,p.Y.Offset)elseif curQP=="Top"then return UDim2.new(p.X.Scale,p.X.Offset,p.Y.Scale,p.Y.Offset-o)else return UDim2.new(p.X.Scale,p.X.Offset,p.Y.Scale,p.Y.Offset+o)end end
local function qEX()qTk=qTk+1 qX=true QB.Visible=true if QB.GroupTransparency>.95 then QB.Position=qHF(qS2)end qAU=os.clock()+.55 tw(QB,.5,{Position=qS2,GroupTransparency=0},Enum.EasingStyle.Back,Enum.EasingDirection.Out)qSA()end
local function qCO()qTk=qTk+1 local my=qTk if qX and os.clock()>qAU then qS2=QB.Position end qX=false tw(QB,.4,{Position=qHF(qS2),GroupTransparency=1},Enum.EasingStyle.Quint,Enum.EasingDirection.In)qSA()task.delay(.42,function()if qTk==my and not qX then QB.Visible=false end end)end
function appQB(pos,an)if not QP2[pos]then pos="Left"end curQP=pos QP2[pos]()qS2=QB.Position qSA()
if not qE then QB.Position=qHF(qS2)return end
if qX then if an then QB.Position=qHF(qS2)qAU=os.clock()+.55 tw(QB,.45,{Position=qS2},Enum.EasingStyle.Back,Enum.EasingDirection.Out)end else QB.Position=qHF(qS2)end end
function setQB(on)on=on and true or false if qE==on then return end qE=on
if on then QP2[curQP]()qS2=QB.Position qT.Visible=true qT.BackgroundTransparency=1 tw(qT,.4,{BackgroundTransparency=.15},Enum.EasingStyle.Quint)qEX()
else qCO()tw(qT,.35,{BackgroundTransparency=1},Enum.EasingStyle.Quint)task.delay(.45,function()if not qE then qT.Visible=false end end)end end
md(qH,QB,nil)
qT.MouseButton1Click:Connect(function()if not qE then return end if qX then qCO()else qEX()end end)
qT.MouseEnter:Connect(function()tw(qT,.15,{BackgroundTransparency=0})end)
qT.MouseLeave:Connect(function()if qE then tw(qT,.15,{BackgroundTransparency=.15})end end)
local function qCC()local n=Fl["Misc/Quick Bar Color"]or"Accent"if n=="Accent"then return ACC end return gc(n,os.clock(),0)end
local QB2={}
local function mQB(lb,fk,ic,df,ac)
local b=Instance.new("TextButton")b.Size=UDim2.new(1,0,0,42)b.BackgroundColor3=C.row b.BackgroundTransparency=.4 b.BorderSizePixel=0 b.AutoButtonColor=false b.Font=FM b.TextSize=11 b.TextColor3=C.dim b.Text=ic or lb b.LayoutOrder=#QB2+1 b.Parent=QB cr(b,9)
local bs=st(b,C.line,1,.4)
local function pn()local on=Fl[fk]if ac then on=false end local qc=qCC()b.BackgroundColor3=on and qc or C.row b.BackgroundTransparency=on and .2 or .4 b.TextColor3=ac and qc or(on and C.bg or C.dim)bs.Color=(on or ac)and qc or C.line bs.Transparency=on and 0 or .4 end
b.MouseButton1Click:Connect(function()if ac then pcall(ac)return end local nv=not Fl[fk]if Se[fk]then Se[fk](nv)else Fl[fk]=nv end pn()nt((nv and"ON  "or"OFF ")..lb)end)
b.MouseEnter:Connect(function()if not Fl[fk]then b.BackgroundTransparency=.15 end end)
b.MouseLeave:Connect(pn)
QB2[#QB2+1]={btn=b,flag=fk,paint=pn,label=lb,def=df}pn()return b end
for _,a in ipairs(QBA)do mQB(a.label,a.flag,a.icon,a.def,a.action)end
function refQB()local qc=qCC()qS.Color=qc for _,q in ipairs(QB2)do local v=Fl["Misc/QB "..q.label]if v==nil then v=q.def end q.btn.Visible=v and true or false q.paint()end end
refQB()task.spawn(function()while gui.Parent do task.wait(.25)refQB()end end)end
tpgRef=teleportToGun
local visT=ct("Visuals")
visT:Label("ESP")
visT:Toggle("ESP Box",false)visT:Toggle("Role",false)visT:Toggle("Color by Role",false)visT:Toggle("Name",false)visT:Toggle("Health",false)visT:Toggle("Distance",false)visT:Toggle("Tracers",false)visT:Toggle("Skeleton",false)visT:Toggle("Chams",false)visT:Toggle("Glow",false)visT:Slider("Chams Fill",0,100,50)visT:Choice("ESP Color",CN,"Lime")
visT:Label("Gun ESP")visT:Toggle("Gun ESP",false)visT:Choice("Gun Color",CN,"Gold")visT:Button("Teleport to Gun",teleportToGun)
visT:Label("Wings")visT:Toggle("Wings",false,function(s)if s then bW()else dc("wings")end end)visT:Choice("Wing Color",WC,"White")visT:Slider("Wing Speed",1,10,3)
visT:Label("Chinese Hat")visT:Toggle("Chinese Hat",false,function(s)if s then bH()else dc("hat")end end)visT:Choice("Hat Color",HC,"Custom")visT:Slider("Hat Transparency",0,100,35)
visT:Label("Trail")visT:Toggle("Trail",false,function(s)if s then bT()else dc("trail")end end)visT:Choice("Trail Color",CN,"Rainbow")visT:Slider("Trail Length",1,30,10)visT:Slider("Trail Width",1,10,4)
do local cT=ct("Custom Color")cT:Label("HSV Color Picker")
local cPV=cT:Frame(60)cPV.BackgroundColor3=cc()cr(cPV,8)st(cPV,WH,1,.5)
local pL=Instance.new("TextLabel")pL.BackgroundTransparency=1 pL.Size=UDim2.new(1,0,1,0)pL.Font=FM pL.TextSize=13 pL.TextColor3=WH pL.TextStrokeTransparency=.3 pL.TextStrokeColor3=Color3.new(0,0,0)pL.Text="CUSTOM COLOR PREVIEW"pL.Parent=cPV
local function uPV()cPV.BackgroundColor3=cc()end
local function rG()for _,k in ipairs({"Color/Hue","Color/Saturation","Color/Brightness"})do local f=GR[k]if f then f()end end end
cT:Slider("Hue",0,360,120,function(v)HSV.h=v/360 uPV()rG()end,hSeq)
cT:Slider("Saturation",0,100,85,function(v)HSV.s=v/100 uPV()rG()end,sSeq)
cT:Slider("Brightness",0,100,100,function(v)HSV.v=v/100 uPV()rG()end,vSeq)
cT:Button("Apply Custom to everything",function()local ks={"Visuals/ESP Color","Visuals/Wing Color","Visuals/Gun Color","Visuals/Hat Color","Visuals/Trail Color","Misc/Quick Bar Color"}for _,k in ipairs(ks)do if Se[k]then Se[k]("Custom")end end SK.refresh()nt("Custom applied everywhere")end)
cT:Label2("Выбери 'Custom' в любом Choice цвета.",FM,10,C.dim)end
do local aT=ct("Aimbot")aT:Label("Aim")aT:Toggle("Enable",false)aT:Toggle("Auto Shoot",true)aT:Slider("Shoot Delay (ms)",10,500,100)aT:Toggle("Skip Innocents",true)aT:Toggle("Weapon Only",true)aT:Toggle("Wall Check",true)aT:Choice("Body Part",AN2,"Head")aT:Slider("FOV",10,360,120)aT:Slider("Smoothness",1,100,30)aT:Toggle("Show FOV",true)
aT:Label("Auto Win")aT:Toggle("Auto Win",false,function(s)if s then sAW()else stAW()end end)aT:Toggle("Auto Teleport",true,function(s)AW.Teleport=s end)aT:Toggle("Auto Equip Weapon",true,function(s)AW.AutoEquip=s end)aT:Slider("Auto Win Delay (ms)",50,600,200,function(v)AW.Delay=(tonumber(v)or 200)/1000 end)aT:Button("Show AutoWin Status",function()nt("AutoWin: "..AW.Status)end)end
do local kT=ct("Kill Aura")kT:Label("Kill Aura (Minecraft-style)")kT:Toggle("Enable",false,function(s)if s then KA.start()else KA.stop()end end)kT:Slider("Range (studs)",3,60,22,function(v)KA.Range=v end)kT:Slider("Hit Delay (ms)",10,500,100,function(v)KA.DamageDelay=v end)kT:Toggle("Auto Equip Weapon",true,function(s)KA.AutoEquip=s end)kT:Toggle("Ignore Innocents",true,function(s)KA.IgnoreInnocents=s end)kT:Toggle("Wall Check",false,function(s)KA.WallCheck=s end)kT:Toggle("Auto-Aim (like Minecraft)",true,function(s)KA.Aim=s end)kT:Toggle("Teleport to Target",false,function(s)KA.Teleport=s end)kT:Button("Show Kill Aura Status",function()nt("KillAura: "..KA.Status)end)kT:Label2("Подходишь к врагу — начинает стрелять/бить автоматически.",FM,10,C.dim)end
do local sT=ct("Stretch")sT:Label("Растяг (ползунок)")sT:Choice("Preset",SP,"Default",function(v)Str.setPreset(v)end)
sT:Slider("Horizontal %",50,200,100,function(v)Str.H=v if Str.Preset~="Custom"then Str.Preset="Custom"end Str.apply()end)
sT:Slider("Vertical %",50,200,100,function(v)Str.V=v if Str.Preset~="Custom"then Str.Preset="Custom"end Str.apply()end)
sT:Slider("Base FOV",40,120,70,function(v)Str.FOV=v Str.apply()end)
sT:Button("Apply Stretch",function()Str.apply()nt("Stretch applied")end)
sT:Button("Reset Stretch",function()Str.setPreset("Default")nt("Stretch reset")end)end
do local mT=ct("Move")mT:Label("Fly")mT:Toggle("Fly",false,function(s)MV.Fly=s if s then eFM()else dFM()end local sh=s and UIS.TouchEnabled fU.Visible=sh fD.Visible=sh nt(s and"Fly ON"or"Fly OFF")end)
mT:Slider("Fly Speed",10,300,60,function(v)MV.Speed=v end)
mT:Label("Noclip")mT:Toggle("Noclip",false,function(s)MV.Noclip=s sNM(s)nt(s and"Noclip ON"or"Noclip OFF")end)
mT:Label("Teleport")mT:Button("Teleport to Gun",teleportToGun)
mT:Label("Walkspeed & Spin")mT:Slider("WalkSpeed",16,1000,16,function(v)aWS(v)end)
mT:Button("Reset WalkSpeed (16)",function()aWS(16)local s=Se["Move/WalkSpeed"]if s then s(16)end end)
mT:Toggle("Spin",false,function(s)if s then sSp()else stSp()end end)
mT:Slider("Spin Speed",0,3000,0,function(v)MV2.SpinSpeed=v end)
mT:Button("Reset Spin (0)",function()MV2.SpinSpeed=0 local s=Se["Move/Spin Speed"]if s then s(0)end end)
mT:Label("Bunnyhop")mT:Toggle("Bunnyhop",false,function(s)BH.Enabled=s nt(s and"Bhop ON"or"Bhop OFF")end)
mT:Slider("Bhop Accel",0,300,40,function(v)BH.Accel=v end)mT:Slider("Bhop Boost/hop",0,30,4,function(v)BH.Boost=v end)mT:Slider("Bhop Max Speed",20,400,120,function(v)BH.Max=v end)end
do local fT=ct("Farm")fT:Label("Coin auto-farm")fT:Toggle("Enable Farm",false,function(s)FM2.Enabled=s if s then sF2()if FM2.Mode=="Fly"or FM2.Mode=="Noclip"then sNC(true)end nt("Farm ON ("..FM2.Mode..")")else stF()nt("Farm OFF")end end)
fT:Choice("Mode",{"Teleport","Fly","Noclip"},"Teleport",function(v)FM2.Mode=v if FM2.Enabled then dF()sNC(v=="Fly"or v=="Noclip")end end)
fT:Slider("Speed (safe)",5,400,80,function(v)FM2.Speed=v end)
fT:Slider("Teleport Delay (ms)",0,500,150,function(v)FM2.TeleportDelay=(tonumber(v)or 0)/1000 end)
fT:Toggle("Anti-AFK",false,function(s)FM2.AntiAFK=s setAFK(s)end)
fT:Toggle("Return to Start",false,function(s)FM2.ReturnOnFinish=s end)
fT:Button("Reset Counter",function()FM2.Collected=0 nt("Counter reset")end)
fT:Button("Show Status",function()nt("Collected: "..FM2.Collected.." | "..FM2.Status)end)end
do local mT2=ct("Misc")local function co(p)local c=p and p.Character local h=c and c:FindFirstChildOfClass("Humanoid")local r=c and c:FindFirstChild("HumanoidRootPart")if c and h and r and h.Health>0 then return c,h,r end return nil end
local function tpR(ro)local _,_,me=co(LP)if not me then nt("No character")return end for _,p in ipairs(Players:GetPlayers())do if p~=LP and gRC(p)==ro then local _,_,r=co(p)if r then me.CFrame=r.CFrame*CFrame.new(0,0,3)me.AssemblyLinearVelocity=Vector3.zero nt("TP to "..ro)return end end end nt(ro.." not found")end
mT2:Label("Teleport")mT2:Button("Teleport to Murderer",function()tpR("Murderer")end)mT2:Button("Teleport to Sheriff",function()tpR("Sheriff")end)
mT2:Label("Quick Bar")mT2:Toggle("Quick Bar",false,function(s)setQB(s)nt(s and"Quick Bar ON"or"Quick Bar OFF")end)
mT2:Choice("Quick Bar Position",QP,"Left",function(v)appQB(v,true)nt("QB: "..v)end)
mT2:Choice("Quick Bar Color",{"Accent","Rainbow","Custom","Lime","Coral","Ice","Violet","Gold","Red","Green","Blue","Pink","White"},"Accent",function()refQB()end)
mT2:Label("Quick Bar Buttons")local QB3={"Aimbot","Auto Shoot","Kill Aura","Fly","Noclip","Bunnyhop","Auto Win","Auto Farm","TP Gun","Spin","ESP Box","Chams","Skeleton","Tracers","Gun ESP","Wings","Chinese Hat","Trail"}
for _,n in ipairs(QB3)do mT2:Toggle("QB "..n,true,function()refQB()end)end
mT2:Label("Screen")mT2:Choice("Aspect Ratio",SR,"Default",function(v)SCR.apply(v,true)nt("Screen: "..v)end)end
do local sT=ct("Info")sT:Label("About luxxs")sT:Label2("luxxs v6.3 - crafted by DrHub",FM,12,C.text)sT:Label2("Telegram: "..TG,FM,11,C.dim)
sT:Button("Copy Telegram link",function()if type(setclipboard)=="function"then pcall(setclipboard,TG)nt("Link copied!")else nt(TG)end end)
sT:Label("Interface")sT:Choice("Accent",AN,ACM,function(n)ACC=A[n]for _,t in ipairs(TH)do pcall(function()t[1][t[2]]=t[3]and t[3](ACC)or ACC end)end rTab()refQB()if FS then if type(makefolder)=="function"and type(isfolder)=="function"and not isfolder(FLD)then pcall(makefolder,FLD)end pcall(function()writefile(FLD.."/accent.txt",n)end)end end)
sT:Label("Appearance")sT:Slider("Menu Opacity %",20,100,94,function(v)MAl=math.clamp(v/100,0,1)if isOp then main.GroupTransparency=1-MAl end end)
sT:Slider("Menu Scale %",70,130,100,function(v)MSc=math.clamp((tonumber(v)or 100)/100,.5,2)if isOp then sc.Scale=fitS()*MSc end end)
sT:Label("Configs")do local SL={"1","2","3","4","5"}local function cp(s)return FLD.."/config_"..s..".json"end
local function sc2(sl)if not FS then nt("FS not available")return end if type(makefolder)=="function"and type(isfolder)=="function"and not isfolder(FLD)then pcall(makefolder,FLD)end local dt={}for k,v in pairs(Fl)do dt[k]=v end local o=pcall(function()writefile(cp(sl),HS:JSONEncode(dt))end)nt(o and("Saved slot "..sl)or"Save error")end
local function lc2(sl)if not FS then nt("FS not available")return end local p=cp(sl)if not isfile(p)then nt("Slot "..sl.." empty")return end local o,dt=pcall(function()return HS:JSONDecode(readfile(p))end)if not o or type(dt)~="table"then nt("Read error")return end for k,v in pairs(dt)do if Se[k]then Se[k](v)end end nt("Loaded slot "..sl)end
sT:Choice("Config Slot",SL,"1")sT:Button("Save Config",function()sc2(Fl["Info/Config Slot"]or"1")end)sT:Button("Load Config",function()lc2(Fl["Info/Config Slot"]or"1")end)
sT:Button("Reset All",function()for k,d in pairs(De)do if Se[k]then Se[k](d)end end nt("Settings reset")end)end
sT:Button("Close Menu",clM)
sT:Button("Unload luxxs",function()for _,c in ipairs(CN2)do pcall(function()c:Disconnect()end)end dc("wings")dc("hat")dc("trail")for p in pairs(E)do rE(p)end for p in pairs(GUN.vis)do dropGun(p)end pcall(function()GGF:Destroy()end)pcall(dFM)pcall(sNM,false)pcall(stAW)pcall(stSp)pcall(KA.stop)BH.Enabled=false pcall(SK.restoreAll)stF()dFP()gui:Destroy()fG:Destroy()end)end
do local skT=ct("Skins")skT:Label("Weapon skins (hand + backpack)")skT:Toggle("Enable",false,function()SK.refresh()end)
skT:Label2("Knife skin:",FM,10,C.dim)skT:List("Knife Skin",SKN,"Off",function()task.spawn(function()task.wait(.05)SK.refresh()end)end)
skT:Label2("Gun skin:",FM,10,C.dim)skT:List("Gun Skin",SKN,"Off",function()task.spawn(function()task.wait(.05)SK.refresh()end)end)
skT:Label("Custom mesh")skT:Input("Knife MeshId","",function(t)SK.cfg.KnifeMesh=t SK.refresh()end)skT:Input("Knife TextureId","",function(t)SK.cfg.KnifeTex=t SK.refresh()end)skT:Input("Gun MeshId","",function(t)SK.cfg.GunMesh=t SK.refresh()end)skT:Input("Gun TextureId","",function(t)SK.cfg.GunTex=t SK.refresh()end)
skT:Slider("Mesh Scale %",10,500,100,function()SK.refresh()end)
skT:Button("Remove all skins",function()if Se["Skins/Knife Skin"]then Se["Skins/Knife Skin"]("Off")end if Se["Skins/Gun Skin"]then Se["Skins/Gun Skin"]("Off")end SK.cfg.KnifeMesh=""SK.cfg.KnifeTex=""SK.cfg.GunMesh=""SK.cfg.GunTex=""SK.refresh()nt("Skins removed")end)end
do local fT2=ct("FPS")fT2:Toggle("Enable Unlock",false,function(s)FP.Enabled=s if s then eFP()else dFP()end end)fT2:Slider("Target FPS",60,10000,10000,function(v)FP.Target=v if FP.Enabled then aFC(v)end end)fT2:Toggle("Show Counter",true,function(s)fF.Visible=s end)fT2:Toggle("Remove Shadows",false,function(s)L.GlobalShadows=not s end)fT2:Toggle("Remove Fog",false,function(s)L.FogEnd=s and 1e6 or 100000 end)end
local pU,pR,pS,pC
do local pT2=ct("Profile")pT2:Label("Player")pU=pT2:Label2("USER      "..LP.Name,FM,13,C.text)pR=pT2:Label2("ROLE      Innocent",FM,13,C.text)pS=pT2:Label2("SESSION   00:00:00",FM,12,C.dim)pC=pT2:Label2("COINS     0",FM,12,C.dim)end
do local PW,PH=252,372
pv.BackgroundColor3=WH;pv.ClipsDescendants=true;cr(pv,14)
gr(pv,90,ColorSequence.new(Color3.fromRGB(34,24,50),Color3.fromRGB(8,8,12)))
T(st(pv,ACC,1.5,.4),"Color")
for i,y in ipairs({308,318,331,348,370})do local f=Instance.new("Frame")f.Position=UDim2.new(0,0,0,y)f.Size=UDim2.new(0,PW,0,1)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=1 f.BackgroundTransparency=.9-i*.02 T(f,"BackgroundColor3")f.Parent=pv end
for i=-5,5 do local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.Position=UDim2.new(0,126+i*6,0,340)f.Size=UDim2.new(0,100,0,1)f.Rotation=math.deg(math.atan2(66,i*44))f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=1 f.BackgroundTransparency=.9 T(f,"BackgroundColor3")f.Parent=pv end
local sB=Instance.new("Frame")sB.Position=UDim2.new(0,0,0,0)sB.Size=UDim2.new(0,PW,0,38)sB.BackgroundColor3=WH sB.BorderSizePixel=0 sB.ZIndex=2 T(sB,"BackgroundColor3")gr(sB,90,nil,NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,.8)}))sB.Parent=pv
local sL2=Instance.new("Frame")sL2.Position=UDim2.new(0,0,0,0)sL2.Size=UDim2.new(0,PW,0,1)sL2.BackgroundColor3=WH sL2.BackgroundTransparency=.3 sL2.BorderSizePixel=0 sL2.ZIndex=2 T(sL2,"BackgroundColor3")sL2.Parent=pv
local cp2=Instance.new("TextLabel")cp2.BackgroundTransparency=1 cp2.Position=UDim2.new(0,24,0,3)cp2.Size=UDim2.new(0,80,0,18)cp2.Font=FM cp2.TextSize=10 cp2.TextColor3=C.dim cp2.TextXAlignment=Enum.TextXAlignment.Left cp2.Text="PREVIEW // LIVE"cp2.ZIndex=9 cp2.Parent=pv
local aC2=Instance.new("TextLabel")aC2.BackgroundTransparency=1 aC2.AnchorPoint=Vector2.new(1,0)aC2.Position=UDim2.new(1,-12,0,3)aC2.Size=UDim2.new(0,130,0,18)aC2.Font=FM aC2.TextSize=10 aC2.TextXAlignment=Enum.TextXAlignment.Right aC2.ZIndex=9 aC2.Parent=pv T(aC2,"TextColor3")
local hd2=Instance.new("Frame")hd2.Position=UDim2.new(0,0,0,23)hd2.Size=UDim2.new(0,PW,0,1)hd2.BackgroundColor3=C.line hd2.BorderSizePixel=0 hd2.ZIndex=3 hd2.Parent=pv
local sr=Instance.new("Frame")sr.Position=UDim2.new(0,0,0,PH-26)sr.Size=UDim2.new(0,PW,0,26)sr.BackgroundColor3=Color3.fromRGB(12,12,15)sr.BackgroundTransparency=.05 sr.BorderSizePixel=0 sr.ZIndex=8 sr.Parent=pv
local srl2=Instance.new("Frame")srl2.Position=UDim2.new(0,0,0,PH-26)srl2.Size=UDim2.new(0,PW,0,1)srl2.BackgroundColor3=C.line srl2.BorderSizePixel=0 srl2.ZIndex=9 srl2.Parent=pv
local tgL=Instance.new("TextLabel")tgL.BackgroundTransparency=1 tgL.Position=UDim2.new(0,10,0,PH-26)tgL.Size=UDim2.new(1,-20,0,26)tgL.Font=FM tgL.TextSize=10 tgL.TextColor3=C.dim tgL.TextXAlignment=Enum.TextXAlignment.Left tgL.TextTruncate=Enum.TextTruncate.AtEnd tgL.Text="NO MODULES"tgL.ZIndex=10 tgL.Parent=pv
local gl={}for i=1,4 do local s=230-i*40 local c=Instance.new("Frame")c.AnchorPoint=Vector2.new(.5,.5)c.Position=UDim2.new(.5,0,0,200)c.Size=UDim2.new(0,s,0,s)c.BackgroundColor3=WH c.BackgroundTransparency=.95 c.BorderSizePixel=0 c.ZIndex=1 c.Parent=pv cr(c,9999)gl[i]=c end
local sh=Instance.new("Frame")sh.AnchorPoint=Vector2.new(.5,.5)sh.Position=UDim2.new(.5,0,0,310)sh.Size=UDim2.new(0,120,0,22)sh.BackgroundColor3=Color3.new(0,0,0)sh.BackgroundTransparency=.35 sh.BorderSizePixel=0 sh.ZIndex=1 sh.Parent=pv cr(sh,9999)
local r1=Instance.new("Frame")r1.AnchorPoint=Vector2.new(.5,.5)r1.Position=UDim2.new(.5,0,0,310)r1.Size=UDim2.new(0,110,0,20)r1.BackgroundTransparency=1 r1.BorderSizePixel=0 r1.ZIndex=1 r1.Parent=pv cr(r1,9999)
local r1S=st(r1,ACC,1.5,.2)
local r2=Instance.new("Frame")r2.AnchorPoint=Vector2.new(.5,.5)r2.Position=UDim2.new(.5,0,0,310)r2.Size=UDim2.new(0,110,0,20)r2.BackgroundTransparency=1 r2.BorderSizePixel=0 r2.ZIndex=1 r2.Parent=pv cr(r2,9999)
local r2S=st(r2,ACC,1,.6)
local pcs={}math.randomseed(os.time())
for i=1,14 do local f=Instance.new("Frame")f.Position=UDim2.new(0,0,0,0)f.Size=UDim2.new(0,2,0,2)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=2 f.Parent=pv cr(f,1)pcs[i]={f=f,x=math.random(12,238),y=math.random(40,330),sp=math.random(8,24),ph=math.random()*6}end
local fR2=Instance.new("Frame")fR2.AnchorPoint=Vector2.new(.5,.5)fR2.Position=UDim2.new(.5,0,0,207)fR2.Size=UDim2.new(0,100,0,100)fR2.BackgroundTransparency=1 fR2.BorderSizePixel=0 fR2.ZIndex=2 fR2.Visible=false fR2.Parent=pv cr(fR2,9999)
local fS2=st(fR2,ACC,1,.45)
local trc=Instance.new("Frame")trc.Position=UDim2.new(0,126,0,309)trc.Size=UDim2.new(0,1,0,37)trc.BackgroundColor3=ACC trc.BorderSizePixel=0 trc.ZIndex=2 trc.Visible=false trc.Parent=pv
local fg=Instance.new("Frame")fg.AnchorPoint=Vector2.new(.5,.5)fg.Position=UDim2.new(.5,0,0,207)fg.Size=UDim2.new(0,90,0,170)fg.BackgroundTransparency=1 fg.Parent=pv
local fSc=Instance.new("UIScale")fSc.Scale=1.2 fSc.Parent=fg
local bd=Instance.new("Frame")bd.Size=UDim2.new(1,0,1,0)bd.BackgroundTransparency=1 bd.Parent=fg
local tF={}for k=1,14 do local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.Size=UDim2.new(0,12,0,10)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=4 f.Visible=false f.Parent=bd tF[k]=f end
local wF={}local ln2={64,60,55,49,43,37}
for _,sd in ipairs({-1,1})do for i=1,6 do local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.Size=UDim2.new(0,ln2[i],0,8)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=4 f.Visible=false f.Parent=bd gr(f,0,nil,NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,.65)}))wF[#wF+1]={f=f,side=sd,i=i,len=ln2[i]}end end
local ov={}for _,a in ipairs(AP)do local o=Instance.new("Frame")o.Position=UDim2.new(0,a.x,0,a.y)o.Size=UDim2.new(0,a.w,0,a.h)o.BackgroundColor3=RD o.BorderSizePixel=0 o.ZIndex=4 o.BackgroundTransparency=1 o.Parent=bd if a.r and a.r>0 then cr(o,a.r)end ov[a.name]=o end
local bp2={}
local function sg(x,y,w,h,r)local f=Instance.new("Frame")f.Position=UDim2.new(0,x,0,y)f.Size=UDim2.new(0,w,0,h)f.BackgroundColor3=BG f.BorderSizePixel=0 f.ZIndex=3 f.Parent=bd gr(f,90,ColorSequence.new(WH,Color3.fromRGB(122,122,136)))local s=Instance.new("UIStroke")s.Thickness=1 s.Color=WH s.Transparency=.78 s.ApplyStrokeMode=Enum.ApplyStrokeMode.Border s.Parent=f bp2[#bp2+1]={f=f,s=s}if r and r>0 then cr(f,r)end return f end
sg(41,35,8,8,2)sg(33,12,24,24,12)sg(27,43,36,30,4)sg(30,73,30,18,3)sg(28,91,34,13,3)
sg(13,45,12,31,5)sg(12,77,10,28,4)sg(11,105,8,8,4)sg(65,45,12,31,5)sg(68,77,10,28,4)sg(71,105,8,8,4)
sg(26,104,17,35,5)sg(28,140,13,26,4)sg(25,165,18,5,2)sg(47,104,17,35,5)sg(49,140,13,26,4)sg(47,165,18,5,2)
for _,j in ipairs({{27,48},{63,48},{19,77},{71,77},{35,104},{55,104},{34,140},{56,140}})do sg(j[1]-3,j[2]-3,6,6,3)end
local vs=Instance.new("Frame")vs.Position=UDim2.new(0,37,0,20)vs.Size=UDim2.new(0,16,0,5)vs.BackgroundColor3=Color3.fromRGB(26,26,32)vs.BorderSizePixel=0 vs.ZIndex=4 vs.BackgroundTransparency=.15 vs.Parent=bd cr(vs,2)
local vg=Instance.new("Frame")vg.Position=UDim2.new(0,39,0,21)vg.Size=UDim2.new(0,6,0,1)vg.BackgroundColor3=WH vg.BorderSizePixel=0 vg.ZIndex=5 T(vg,"BackgroundColor3")vg.Parent=bd
local em=Instance.new("TextLabel")em.BackgroundTransparency=1 em.Position=UDim2.new(0,27,0,52)em.Size=UDim2.new(0,36,0,14)em.Font=FH em.TextSize=8 em.TextTransparency=.2 em.Text="LX"em.ZIndex=4 T(em,"TextColor3")em.Parent=bd
local blt=Instance.new("Frame")blt.Position=UDim2.new(0,28,0,91)blt.Size=UDim2.new(0,34,0,2)blt.BackgroundColor3=WH blt.BackgroundTransparency=.4 blt.BorderSizePixel=0 blt.ZIndex=4 T(blt,"BackgroundColor3")blt.Parent=bd
local skl=Instance.new("Frame")skl.Size=UDim2.new(1,0,1,0)skl.BackgroundTransparency=1 skl.ZIndex=6 skl.Visible=false skl.Parent=bd
local J={head={45,24},neck={45,40},shL={27,48},shR={63,48},elL={18,78},elR={72,78},haL={15,108},haR={75,108},pel={45,98},hipL={35,104},hipR={55,104},knL={34,140},knR={56,140},ftL={34,166},ftR={56,166}}
local BPR={{"head","neck"},{"neck","pel"},{"neck","shL"},{"neck","shR"},{"shL","elL"},{"elL","haL"},{"shR","elR"},{"elR","haR"},{"pel","hipL"},{"pel","hipR"},{"hipL","knL"},{"knL","ftL"},{"hipR","knR"},{"knR","ftR"}}
local skP={}
for _,b in ipairs(BPR)do local a,c=J[b[1]],J[b[2]]local dx,dy=c[1]-a[1],c[2]-a[2]local l=Instance.new("Frame")l.AnchorPoint=Vector2.new(.5,.5)l.Position=UDim2.new(0,(a[1]+c[1])/2,0,(a[2]+c[2])/2)l.Size=UDim2.new(0,math.sqrt(dx*dx+dy*dy),0,2)l.Rotation=math.deg(math.atan2(dy,dx))l.BackgroundColor3=WH l.BorderSizePixel=0 l.ZIndex=6 l.Parent=skl skP[#skP+1]=l end
for _,p in pairs(J)do local f=Instance.new("Frame")f.Position=UDim2.new(0,p[1]-2.5,0,p[2]-2.5)f.Size=UDim2.new(0,5,0,5)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=7 f.Parent=skl cr(f,3)skP[#skP+1]=f end
local hS={}local brm=Instance.new("Frame")brm.Position=UDim2.new(0,3,0,11)brm.Size=UDim2.new(0,84,0,4)brm.BackgroundColor3=WH brm.BorderSizePixel=0 brm.ZIndex=5 gr(brm,0,ColorSequence.new(Color3.fromRGB(140,140,140),WH,Color3.fromRGB(130,130,130)))brm.Visible=false cr(brm,2)brm.Parent=bd hS[1]=brm
for i=1,22 do local t=(i-1)/21 local w=56*(1-t)^1.3+3 local hf=Instance.new("Frame")hf.Position=UDim2.new(0,45-w/2,0,13-i*2)hf.Size=UDim2.new(0,w,0,2)hf.BackgroundColor3=WH hf.BorderSizePixel=0 hf.ZIndex=5 gr(hf,0,ColorSequence.new(Color3.fromRGB(160,160,160),WH,Color3.fromRGB(130,130,130)))hf.Visible=false cr(hf,1)hf.Parent=bd hS[#hS+1]=hf end
local aU={}for _,a in ipairs(AP)do local db=Instance.new("TextButton")db.AnchorPoint=Vector2.new(.5,.5)db.Position=UDim2.new(0,a.dx,0,a.dy)db.Size=UDim2.new(0,11,0,11)db.BackgroundColor3=Color3.fromRGB(230,230,240)db.BackgroundTransparency=.4 db.BorderSizePixel=0 db.Text=""db.AutoButtonColor=false db.ZIndex=12 db.Parent=bd cr(db,6)
local ds=st(db,WH,1,.5)local ui={a=a,dot=db,ds=ds,hover=false}db.MouseEnter:Connect(function()ui.hover=true end)db.MouseLeave:Connect(function()ui.hover=false end)db.MouseButton1Click:Connect(function()Se["Aimbot/Body Part"](a.name)end)aU[#aU+1]=ui end
local aD=Instance.new("Frame")aD.AnchorPoint=Vector2.new(.5,.5)aD.Position=UDim2.new(0,45,0,24)aD.Size=UDim2.new(0,6,0,6)aD.BackgroundColor3=RD aD.BorderSizePixel=0 aD.ZIndex=13 aD.Parent=bd cr(aD,3)
local rt={}for i=1,4 do local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.Position=UDim2.new(0,0,0,0)f.Size=UDim2.new(0,(i<=2)and 6 or 1,(i<=2)and 1 or 6)f.BackgroundColor3=RD f.BorderSizePixel=0 f.ZIndex=13 f.Parent=bd rt[i]=f end
local bF=Instance.new("Frame")bF.Position=UDim2.new(0,2,0,6)bF.Size=UDim2.new(0,86,0,164)bF.BackgroundColor3=WH bF.BackgroundTransparency=1 bF.BorderSizePixel=0 bF.ZIndex=7 bF.Visible=false bF.Parent=fg
local br2={}for i=1,8 do local f=Instance.new("Frame")f.Position=UDim2.new(0,0,0,0)f.Size=UDim2.new(0,2,0,2)f.BackgroundColor3=WH f.BorderSizePixel=0 f.ZIndex=8 f.Visible=false f.Parent=fg br2[i]=f end
local function sBR(x,y,w,h,col,vis)local L2=math.min(14,w*.3,h*.2)local sp2={{x,y,L2,2},{x,y,2,L2},{x+w-L2,y,L2,2},{x+w-2,y,2,L2},{x,y+h-2,L2,2},{x,y+h-L2,2,L2},{x+w-L2,y+h-2,L2,2},{x+w-2,y+h-L2,2,L2}}for i,s in ipairs(sp2)do local f=br2[i]f.Visible=vis f.Position=UDim2.new(0,s[1],0,s[2])f.Size=UDim2.new(0,s[3],0,s[4])f.BackgroundColor3=col end end
local function eL(fn,sz)local l=Instance.new("TextLabel")l.BackgroundTransparency=1 l.Size=UDim2.new(0,130,0,13)l.Font=fn l.TextSize=sz l.ZIndex=8 l.Visible=false l.TextStrokeTransparency=.5 l.TextStrokeColor3=Color3.new(0,0,0)l.Parent=fg return l end
local rL=eL(FS2,10)local nL=eL(FM,9)nL.Text="PLAYER"local dL=eL(FM,8)dL.TextColor3=WH dL.Text="[42m]"
local hpB=Instance.new("Frame")hpB.Position=UDim2.new(0,-5,0,6)hpB.Size=UDim2.new(0,3,0,164)hpB.BackgroundColor3=Color3.fromRGB(14,14,16)hpB.BorderSizePixel=0 hpB.ZIndex=8 hpB.Visible=false hpB.Parent=fg
local hpF=Instance.new("Frame")hpF.AnchorPoint=Vector2.new(0,1)hpF.Position=UDim2.new(0,0,1,0)hpF.Size=UDim2.new(1,0,.72,0)hpF.BackgroundColor3=Color3.fromRGB(70,230,110)hpF.BorderSizePixel=0 hpF.ZIndex=9 hpF.Parent=hpB
local gP2=Instance.new("TextLabel")gP2.BackgroundTransparency=1 gP2.Size=UDim2.new(0,90,0,12)gP2.Position=UDim2.new(0,-100,0,150)gP2.Font=FM gP2.TextSize=9 gP2.Text="GUN [18m]"gP2.Visible=false gP2.ZIndex=8 gP2.TextStrokeTransparency=.5 gP2.Parent=fg
local gB=Instance.new("Frame")gB.Position=UDim2.new(0,-90,0,164)gB.Size=UDim2.new(0,22,0,5)gB.BackgroundColor3=WH gB.BorderSizePixel=0 gB.ZIndex=8 gB.Visible=false gB.Parent=fg
local gG=Instance.new("Frame")gG.Position=UDim2.new(0,-90,0,166)gG.Size=UDim2.new(0,5,0,10)gG.BackgroundColor3=WH gG.BorderSizePixel=0 gG.ZIndex=8 gG.Visible=false gG.Parent=fg
local bT3=6 local aPX,aPY=45,24 local tA=.3
tr(RS.RenderStepped:Connect(function(dt)if not isOp then return end local t=os.clock()local ro="Murderer"local rcl=RC[ro]or WH local ecl=Fl["Visuals/Color by Role"]and rcl or gc(Fl["Visuals/ESP Color"],t,0)
local pu=(math.sin(t*1.4)+1)/2
for i,c in ipairs(gl)do c.BackgroundColor3=ACC c.BackgroundTransparency=.955-i*.006-pu*.01 end
r1S.Color=ACC r2S.Color=ACC
local ys=34+((t*.33)%1)*296 sL2.Position=UDim2.new(0,0,0,ys)sB.Position=UDim2.new(0,0,0,ys-38)
local rp=(t*.55)%1 r2.Size=UDim2.new(0,90+rp*100,0,16+rp*26)r2S.Transparency=.3+rp*.7
for _,p in ipairs(pcs)do p.y=p.y-p.sp*dt if p.y<30 then p.y=338 p.x=math.random(12,238)end p.f.Position=UDim2.new(0,p.x+math.sin(t*.8+p.ph)*6,0,p.y)p.f.BackgroundTransparency=1-((p.y-30)/308)*.55 p.f.BackgroundColor3=ACC end
bd.Position=UDim2.new(0,0,0,math.sin(t*2)*1.5)
local hOn=Fl["Visuals/Chinese Hat"]bT3=bT3+((hOn and-36 or 6)-bT3)*.2 local bh=170-bT3 local bOn=Fl["Visuals/ESP Box"]
bF.Visible=bOn bF.BackgroundColor3=ecl bF.BackgroundTransparency=.95 bF.Position=UDim2.new(0,2,0,bT3)bF.Size=UDim2.new(0,86,0,bh)sBR(2,bT3,86,bh,ecl,bOn)
rL.Visible=Fl["Visuals/Role"]rL.Text=string.upper(ro)rL.TextColor3=rcl rL.Position=UDim2.new(0,-20,0,bT3-26)
nL.Visible=Fl["Visuals/Name"]nL.TextColor3=ecl nL.Position=UDim2.new(0,-20,0,bT3-14)
dL.Visible=Fl["Visuals/Distance"]dL.Position=UDim2.new(0,-20,0,170+3)
hpB.Visible=Fl["Visuals/Health"]hpB.Position=UDim2.new(0,-5,0,bT3)hpB.Size=UDim2.new(0,3,0,bh)hpF.Size=UDim2.new(1,0,.7+math.sin(t)*.2,0)
trc.Visible=Fl["Visuals/Tracers"]trc.BackgroundColor3=ecl
local skOn=Fl["Visuals/Skeleton"]skl.Visible=skOn if skOn then for _,s in ipairs(skP)do s.BackgroundColor3=ecl end end
local ch,gl2=Fl["Visuals/Chams"],Fl["Visuals/Glow"]
for _,p in ipairs(bp2)do p.f.BackgroundColor3=ch and ecl or BG p.f.BackgroundTransparency=ch and .25 or 0 p.s.Color=gl2 and ecl or WH p.s.Transparency=gl2 and .05 or .78 p.s.Thickness=gl2 and 2 or 1 end
vs.BackgroundColor3=ch and Color3.fromRGB(20,20,24)or Color3.fromRGB(26,26,32)
for i,s in ipairs(hS)do s.Visible=hOn if hOn then s.BackgroundColor3=gc(Fl["Visuals/Hat Color"],t,i*.04)s.BackgroundTransparency=(Fl["Visuals/Hat Transparency"]or 35)/100 end end
local gOn=Fl["Visuals/Gun ESP"]local gcl=gc(Fl["Visuals/Gun Color"]or"Gold",t,0)
gP2.Visible=gOn gB.Visible=gOn gG.Visible=gOn if gOn then gP2.TextColor3=gcl gB.BackgroundColor3=gcl gG.BackgroundColor3=gcl end
local wOn=Fl["Visuals/Wings"]local flp=math.sin(t*(Fl["Visuals/Wing Speed"]or 3))*.2
for _,w in ipairs(wF)do w.f.Visible=wOn if wOn then local a=math.rad(8+(w.i-1)*14)+flp*(.4+w.i*.12)local dx,dy=w.side*math.cos(a),-math.sin(a)local sx=(w.side==-1)and 28 or 62 w.f.Position=UDim2.new(0,sx+dx*w.len/2,0,50+dy*w.len/2)w.f.Rotation=math.deg(math.atan2(dy,dx))w.f.BackgroundColor3=gc(Fl["Visuals/Wing Color"],t,w.i*.05)end end
local tOn=Fl["Visuals/Trail"]local tl2=math.clamp(Fl["Visuals/Trail Length"]or 10,1,30)local cnt=math.clamp(math.floor(tl2/30*14)+3,3,14)local tw2=Fl["Visuals/Trail Width"]or 4
for k,f in ipairs(tF)do local sh2=tOn and k<=cnt f.Visible=sh2 if sh2 then local fl2=k/cnt f.Position=UDim2.new(0,16-k*8,0,100+math.sin(t*4+k*.6)*4*fl2)f.Size=UDim2.new(0,12,0,math.max(2,tw2*2.4*(1-fl2*.85)))f.BackgroundTransparency=.1+fl2*.85 f.BackgroundColor3=gc(Fl["Visuals/Trail Color"],t,-k*.04)end end
local aOn=Fl["Aimbot/Enable"]fR2.Visible=aOn and Fl["Aimbot/Show FOV"]or false if fR2.Visible then local r=24+((Fl["Aimbot/FOV"]or 120)-10)/350*94 fR2.Size=UDim2.new(0,r*2,0,r*2)fS2.Color=ACC end
local sl2=Fl["Aimbot/Body Part"]local ap2=(math.sin(t*5)+1)/2
for pn,o in pairs(ov)do o.BackgroundTransparency=(pn==sl2)and(.6-ap2*.2)or 1 end
local slP=nil for _,a in ipairs(AP)do if a.name==sl2 then slP=a break end end
if slP then local k=math.clamp(dt*12,0,1)aPX=aPX+(slP.dx-aPX)*k aPY=aPY+(slP.dy-aPY)*k end
aD.Position=UDim2.new(0,aPX,0,aPY)local g=7+ap2*4
rt[1].Position=UDim2.new(0,aPX-g-3,0,aPY)rt[2].Position=UDim2.new(0,aPX+g+3,0,aPY)rt[3].Position=UDim2.new(0,aPX,0,aPY-g-3)rt[4].Position=UDim2.new(0,aPX,0,aPY+g+3)
for _,u in ipairs(aU)do if u.a.name==sl2 then u.dot.BackgroundColor3=RD u.dot.BackgroundTransparency=.2 u.dot.Size=UDim2.new(0,11,0,11)u.ds.Transparency=.1 elseif u.hover then u.dot.BackgroundColor3=Color3.fromRGB(255,170,170)u.dot.BackgroundTransparency=.2 u.dot.Size=UDim2.new(0,13,0,13)u.ds.Transparency=.2 else u.dot.BackgroundColor3=Color3.fromRGB(230,230,240)u.dot.BackgroundTransparency=.45 u.dot.Size=UDim2.new(0,11,0,11)u.ds.Transparency=.55 end end
aC2.Text=aOn and("AIM / "..string.upper(tostring(sl2)))or"AIM OFF"
tA=tA+dt if tA>=.25 then tA=0 local tg2={}
local function add(k,n)if Fl[k]then tg2[#tg2+1]=n end end
add("Visuals/ESP Box","BOX")add("Visuals/Name","NAME")add("Visuals/Role","ROLE")add("Visuals/Health","HP")add("Visuals/Distance","DIST")
add("Visuals/Tracers","TRC")add("Visuals/Skeleton","SKEL")add("Visuals/Chams","CHAMS")add("Visuals/Glow","GLOW")add("Visuals/Gun ESP","GUN")
add("Visuals/Chinese Hat","HAT")add("Visuals/Wings","WINGS")add("Visuals/Trail","TRAIL")
if aOn then tg2[#tg2+1]="AIM"if Fl["Aimbot/Skip Innocents"]then tg2[#tg2+1]="NO-INNO"end end
if Fl["Aimbot/Auto Win"]then tg2[#tg2+1]="AUTOWIN"end
if Fl["KillAura/Enable"]then tg2[#tg2+1]="KILLAURA"end
if Fl["Move/Bunnyhop"]then tg2[#tg2+1]="BHOP"end
tgL.Text=#tg2>0 and table.concat(tg2," / ")or"NO MODULES"end end))end
selT(visT)
tr(LP.CharacterAdded:Connect(function(c)c:WaitForChild("HumanoidRootPart",10)c:WaitForChild("Head",10)task.wait(.3)if Fl["Visuals/Wings"]then bW()end if Fl["Visuals/Chinese Hat"]then bH()end if Fl["Visuals/Trail"]then bT()end if Fl["Move/Fly"]and eFM then eFM()end end))
task.spawn(function()local st2=tick()while gui.Parent do task.wait(1)local s=math.floor(tick()-st2)local hh=math.floor(s/3600)local mm=math.floor((s%3600)/60)local ss=s%60 local ro=gRC(LP)pS.Text=string.format("SESSION   %02d:%02d:%02d",hh,mm,ss)pR.Text="ROLE      "..ro pC.Text="COINS     "..FM2.Collected fR.Text="ROLE  "..string.upper(ro)fR.TextColor3=(ro~="Innocent")and(RC[ro]or C.dim)or C.dim end end)
task.spawn(function()while gui.Parent do task.wait(.4)if UIS.TouchEnabled and not UIS.KeyboardEnabled and(Fl["Aimbot/Enable"]or Fl["Aimbot/Auto Win"]or Fl["KillAura/Enable"])then pcall(function()local pg=LP:FindFirstChildOfClass("PlayerGui")local tg=pg and pg:FindFirstChild("TouchGui")if not tg then return end if not tg.Enabled then tg.Enabled=true end local f=tg:FindFirstChild("TouchControlFrame")if f then if not f.Visible then f.Visible=true end for _,n in ipairs({"DynamicThumbstickFrame","ThumbstickFrame"})do local t=f:FindFirstChild(n)if t and not t.Visible then t.Visible=true end end end end)end end end)
task.spawn(function()local t0=os.clock()while par:FindFirstChild("luxxsKey")and os.clock()-t0<8 do task.wait(.1)end task.wait(.2)opM()end)
nt("luxxs v6.3 // ESC or RIGHTSHIFT")
end,function(e)return tostring(e).."\n"..tostring(debug.traceback())end)
if not ok then warn("[luxxs] CRASH: "..tostring(err))
pcall(function()local h=(gethui and gethui())or game:GetService("CoreGui")local sg=Instance.new("ScreenGui")sg.Name="luxxsError"sg.ResetOnSpawn=false sg.IgnoreGuiInset=true sg.DisplayOrder=1000 sg.Parent=h
local f=Instance.new("Frame")f.AnchorPoint=Vector2.new(.5,.5)f.Position=UDim2.new(.5,0,.5,0)f.Size=UDim2.new(.9,0,.6,0)f.BackgroundColor3=Color3.fromRGB(20,14,16)f.BorderSizePixel=0 f.Parent=sg
Instance.new("UICorner",f).CornerRadius=UDim.new(0,10)
local st=Instance.new("UIStroke")st.Color=Color3.fromRGB(255,84,84)st.Thickness=2 st.Parent=f
local t=Instance.new("TextLabel")t.BackgroundTransparency=1 t.Position=UDim2.new(0,12,0,8)t.Size=UDim2.new(1,-24,0,24)t.Font=Enum.Font.RobotoMono t.TextSize=16 t.TextColor3=Color3.fromRGB(255,120,120)t.TextXAlignment=Enum.TextXAlignment.Left t.Text="luxxs crashed - send this text to the developer"t.Parent=f
local bx=Instance.new("TextBox")bx.Position=UDim2.new(0,12,0,40)bx.Size=UDim2.new(1,-24,1,-96)bx.BackgroundColor3=Color3.fromRGB(10,8,10)bx.BorderSizePixel=0 bx.ClearTextOnFocus=false bx.TextEditable=false bx.MultiLine=true bx.TextWrapped=true bx.TextXAlignment=Enum.TextXAlignment.Left bx.TextYAlignment=Enum.TextYAlignment.Top bx.Font=Enum.Font.RobotoMono bx.TextSize=13 bx.TextColor3=Color3.fromRGB(235,235,235)bx.Text=tostring(err)bx.Parent=f
local b1=Instance.new("TextButton")b1.AnchorPoint=Vector2.new(0,1)b1.Position=UDim2.new(0,12,1,-10)b1.Size=UDim2.new(0,130,0,32)b1.BackgroundColor3=Color3.fromRGB(60,30,34)b1.BorderSizePixel=0 b1.Font=Enum.Font.RobotoMono b1.TextSize=14 b1.TextColor3=Color3.fromRGB(255,255,255)b1.Text="COPY"b1.Parent=f
Instance.new("UICorner",b1).CornerRadius=UDim.new(0,8)
b1.MouseButton1Click:Connect(function()if setclipboard then pcall(setclipboard,tostring(err))t.Text="copied!"end end)
local b2=Instance.new("TextButton")b2.AnchorPoint=Vector2.new(0,1)b2.Position=UDim2.new(0,152,1,-10)b2.Size=UDim2.new(0,130,0,32)b2.BackgroundColor3=Color3.fromRGB(60,30,34)b2.BorderSizePixel=0 b2.Font=Enum.Font.RobotoMono b2.TextSize=14 b2.TextColor3=Color3.fromRGB(255,255,255)b2.Text="CLOSE"b2.Parent=f
Instance.new("UICorner",b2).CornerRadius=UDim.new(0,8)
b2.MouseButton1Click:Connect(function()sg:Destroy()end)end)end
