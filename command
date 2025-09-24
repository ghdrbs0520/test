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

# 시선 트리거
1. 데이터 더미 소환
/execute at 플레이어 run summon 좌표
2. 시선 좌표 복사
/execute at 플레이어 as 더미 run tp @s ~ ~ ~
3. 시선 좌표값 데이터 저장
/data ~~~~~~~~~~
4. 저장된 값을 변수로 사용하여 함수 실행
/function {변수값:좌표값}
5. 해당 조건 값이 특정 조건 도달시 이벤트 발생 (해당 플레이어가 특정 엔티티를 바라보는 기준으로 좌표값이 조건으로 충족되는 방법)
/execute if entity @p[x_rotation={$변수값},y_rotation={$변수값}] run function ~~~~~
6. 또는 특정 방향을 바라보면 이벤트 발생
