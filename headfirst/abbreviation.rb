# Problems: https://www.hackerrank.com/challenges/abbr

# Enter your code here. Read input from STDIN. Print output to STDOUT
lines = []

File.open("input.txt") do |file|
  lines = file.readlines
end

q = lines[0].to_i
(q).times do |i|
    a = lines[2*i+1]
    b = lines[2*i+2]

    if i == 8
      # Previous delete index
      pc = 0
      # Traverse a, find character uppercase or appear in b
      0.upto(a.length-1) do |i|
          pc.upto(b.length-1) do |j|
            # Check for same uppercase
            if a[i] == b[j]
              pc += 1
              break
            # Not same but when uppercase, they're equal
            elsif a[i].upcase == b[j]
                # Tricky: If next is the char upper equal to current a[i]
                if a[i+1] != b[j+1] and a[i+1] == b[j]
                  a[i] = " "
                  break
                else
                  a[i] = a[i].upcase
                  pc += 1
                  break
                end
                a[i] = a[i].upcase
                pc += 1
                break
            # Any uppercase character
            elsif a[i] >= "A" and a[i] <= "Z"
                break
            # Any lowercase character    
            else
                a[i] = " "
            end
          end
      end

      # Remove any remaining lowercase
      0.upto(a.length-1) do |i|
          if a[i] >= "a" and a[i] <= "z"
              a[i] = " "
          end
      end

      a.gsub!(" ","")

      s='''if a == b
          puts "YES"
      else
          puts "NO"
      end'''
      puts a
      puts b
    end
end
