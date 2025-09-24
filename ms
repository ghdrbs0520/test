
# 벽통과
/execute as @e[tag=엔티티] ~~~~~~~ # 대충 플레이어 바라봄
tp @e[tag=엔티티] ~ ~ ~ ~ ~0.00001 # 바라보는 방향으로 이동
execute as @e[tag=엔티티] if entity @p run "/function test:test" # 이벤트 발생

# 트랩
execute as @p[x=1,y=10,z=1,dx=5,dy=10,dz=5] run "/function test:test" # 이벤트 발생
execute as @e[tag=엔티티] if entity @p[distance=2.5] run "/function test:test" # 이벤트 발생

ㄴ /summon ~~~~~~~~~~~~~
   /playsound ~~~~~~~~~~
   /summon lightningbalt?9 ~ ~ ~ "Silent:1b" # 소리없는 번개 가능?
   /
